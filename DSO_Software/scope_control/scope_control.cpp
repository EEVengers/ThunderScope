#include "scope_control.h"
#include "scope_serial.h"
#include <algorithm>
#include <math.h>

scope_control::scope_control(){
  ser = new scope_serial;
}

scope_control::~scope_control(){
  delete ser;
}

int scope_control::configure_serial(char* path){
  ser->open_port(path);
  return 1;
}

int scope_control::boot(){

  unsigned char io_dir [6];
  unsigned char adc_temp [4];

  std::copy(io_dir_init,io_dir_init+sizeof(io_dir_init),io_dir);
  std::copy(io_out_init,io_out_init+sizeof(io_out_init),io_out);

  ser->send_command(io_out,sizeof(io_out));
  ser->send_command(io_dir,sizeof(io_dir));

  std::copy(&pga_init[0][0],&pga_init[0][0]+16,&pga[0][0]);
  std::copy(&dac_init[0][0],&dac_init[0][0]+16,&dac[0][0]);

  //Reset ADC
  std::copy(adc_reset,adc_reset+sizeof(adc_reset),adc_temp);
  ser->send_command(adc_temp,sizeof(adc_temp));
  //Power Down ADC
  std::copy(adc_power_down,adc_power_down+sizeof(adc_power_down),adc_temp);
  ser->send_command(adc_temp,sizeof(adc_temp));
  //Course Gain On
  std::copy(adc_cgain_cfg,adc_cgain_cfg+sizeof(adc_cgain_cfg),adc_temp);
  ser->send_command(adc_temp,sizeof(adc_temp));
  //Course Gain 4-CH set
  std::copy(adc_cgain4,adc_cgain4+sizeof(adc_cgain4),adc_temp);
  ser->send_command(adc_temp,sizeof(adc_temp));
  //Course Gain 1-CH & 2-CH set
  std::copy(adc_cgain12,adc_cgain12+sizeof(adc_cgain12),adc_temp);
  ser->send_command(adc_temp,sizeof(adc_temp));

  std::copy(adc_chnum_clkdiv_init,adc_chnum_clkdiv_init+sizeof(adc_chnum_clkdiv_init),adc_chnum_clkdiv);
  std::copy(adc_in_sel_12_init,adc_in_sel_12_init+sizeof(adc_in_sel_12_init),adc_in_sel_12);
  std::copy(adc_in_sel_34_init,adc_in_sel_34_init+sizeof(adc_in_sel_34_init),adc_in_sel_34);

  num_ch_on = 0;
  ch_is_on[0] = false;
  ch_is_on[1] = false;
  ch_is_on[2] = false;
  ch_is_on[3] = false;

  return 1;
}

int scope_control::load_default(){
  return 1;
}

int scope_control::ch_on(int ch_num){
  
  if (ch_is_on[ch_num-1])
    return 0;             //Channel already on
  
  num_ch_on++;
  ch_is_on[ch_num-1] = true;

  adc_ch_cfg();

  if (ch_num == 1)
    io_out[4] |= (1 << 7);
  else if (ch_num == 2)
    io_out[4] |= (1 << 2);  
  else if (ch_num == 3)
    io_out[3] |= (1 << 5);
  else if (ch_num == 4)
    io_out[3] |= (1 << 0);

  ser->send_command(io_out,sizeof(io_out));

  //DAC and PGA forget settings on channel off, so rewrite to them
  ser->send_command(dac[ch_num-1],sizeof(dac[1]));
  ser->send_command(pga[ch_num-1],sizeof(pga[1]));

  return 1;
}

int scope_control::ch_off(int ch_num){
 
  if (!ch_is_on[ch_num-1])
    return 0;             //Channel already off
  
  num_ch_on--;
  ch_is_on[ch_num-1] = false;

  adc_ch_cfg();

  if (ch_num == 1)
    io_out[4] &= ~(1 << 7);
  else if (ch_num == 2)
    io_out[4] &= ~(1 << 2);  
  else if (ch_num == 3)
    io_out[3] &= ~(1 << 5);
  else if (ch_num == 4)
    io_out[3] &= ~(1 << 0);
    
  ser->send_command(io_out,sizeof(io_out));

  return 1;
}

int scope_control::dc_cpl(int ch_num){
  if (ch_num == 1)
    io_out[5] |= (1 << 3);
  else if (ch_num == 2)
    io_out[4] |= (1 << 6);  
  else if (ch_num == 3)
    io_out[4] |= (1 << 1);
  else if (ch_num == 4)
    io_out[3] |= (1 << 4);
    
  ser->send_command(io_out,sizeof(io_out));

  return 1;
}

int scope_control::ac_cpl(int ch_num){
  if (ch_num == 1)
    io_out[5] &= ~(1 << 3);
  else if (ch_num == 2)
    io_out[4] &= ~(1 << 6);  
  else if (ch_num == 3)
    io_out[4] &= ~(1 << 1);
  else if (ch_num == 4)
    io_out[3] &= ~(1 << 4);
    
  ser->send_command(io_out,sizeof(io_out));

  return 1;
}

int scope_control::vdiv_set(int ch_num, int vdiv){

  if (vdiv > 100){              //Attenuator relay on for higher v/divs
    if (ch_num == 1)
      io_out[5] |= (1 << 1);
    else if (ch_num == 2)
      io_out[4] |= (1 << 4);  
    else if (ch_num == 3)
      io_out[3] |= (1 << 7);
    else if (ch_num == 4)
      io_out[3] |= (1 << 2); 
  }
  else{                         //Attenuator relay off for lower v/divs
    if (ch_num == 1)
      io_out[5] &= ~(1 << 1);
    else if (ch_num == 2)
      io_out[4] &= ~(1 << 4);  
    else if (ch_num == 3)
      io_out[3] &= ~(1 << 7);
    else if (ch_num == 4)
      io_out[3] &= ~(1 << 2);
  }

  if (vdiv == 10000 || vdiv == 100){
    pga[ch_num-1][3] &= 0xE0;
    pga[ch_num-1][3] |= 0x0A;
  }
  else if (vdiv == 5000 || vdiv == 50){
    pga[ch_num-1][3] &= 0xE0;
    pga[ch_num-1][3] |= 0x07;
  }
  else if (vdiv == 2000 || vdiv == 20){
    pga[ch_num-1][3] &= 0xE0;
    pga[ch_num-1][3] |= 0x03;
  }
  else if (vdiv == 1000 || vdiv == 10){
    pga[ch_num-1][3] &= 0xE0;
    pga[ch_num-1][3] |= 0x1A;
  }
  else if (vdiv == 500 || vdiv == 5){
    pga[ch_num-1][3] &= 0xE0;
    pga[ch_num-1][3] |= 0x17;
  }
  else if (vdiv == 200 || vdiv == 2){
    pga[ch_num-1][3] &= 0xE0;
    pga[ch_num-1][3] |= 0x13;
  }
  else if (vdiv == 1){
    pga[ch_num-1][3] &= 0xE0;
    pga[ch_num-1][3] |= 0x10;
  }

  ser->send_command(pga[ch_num-1],sizeof(pga[1]));
  ser->send_command(io_out,sizeof(io_out));

  return 1;
}

int scope_control::voffset_set(int ch_num, double voffset){

  unsigned int dac_value = (unsigned int)round((voffset + 0.5) * 1023);
  dac_value = dac_value << 2;

  dac[ch_num-1][3] = (unsigned char)(0xFF & dac_value);
  dac[ch_num-1][2] = (unsigned char)(0x0F & (dac_value >> 8));

  ser->send_command(dac[ch_num-1],sizeof(dac[1]));

  return 1;
}

int scope_control::bw_set(int ch_num, int bw){
  if (bw == 20){
    pga[ch_num-1][3] &= 0x1F;
    pga[ch_num-1][3] |= 0x40;
  }
  else if (bw == 100){
    pga[ch_num-1][3] &= 0x1F;
    pga[ch_num-1][3] |= 0x80;
  }
  else if (bw == 200){
    pga[ch_num-1][3] &= 0x1F;
    pga[ch_num-1][3] |= 0xC0;
  }
  else if (bw == 350){
    pga[ch_num-1][3] &= 0x1F;
  }

  ser->send_command(pga[ch_num-1],sizeof(pga[1]));

  return 1;
}

int scope_control::adc_ch_cfg(){
  unsigned char adc_temp [4];
  int i;

  if (num_ch_on == 0){
    std::copy(adc_power_down,adc_power_down+sizeof(adc_power_down),adc_temp);
    ser->send_command(adc_temp,sizeof(adc_temp));

    return 1;
  }
  else if (num_ch_on == 1){
    adc_chnum_clkdiv[3] = 0x01;
    adc_chnum_clkdiv[2] = 0x00;

    for (i=0; !ch_is_on[i]; i++);   //Find channel that is on
    
    adc_in_sel_12[3] = (2 << i);    //Set all 4 ADCs to sample that channel    
    adc_in_sel_12[2] = (2 << i);
    adc_in_sel_34[3] = (2 << i);
    adc_in_sel_34[2] = (2 << i);
  }
  else if (num_ch_on == 2){
    adc_chnum_clkdiv[3] = 0x02;
    adc_chnum_clkdiv[2] = 0x01;

    for (i=0; !ch_is_on[i]; i++);   //Find first on channel

    adc_in_sel_12[3] = (2 << i);    //Set 2 ADCs to sample first channel
    adc_in_sel_12[2] = (2 << i);

    for (; !ch_is_on[i]; i++);      //Find second on channel

    adc_in_sel_34[3] = (2 << i);    //Set 2 ADCs to sample second channel
    adc_in_sel_34[2] = (2 << i);

  }
  else{
    adc_chnum_clkdiv[3] = 0x04;
    adc_chnum_clkdiv[2] = 0x02;
    adc_in_sel_12[3] = (2 << 0);    //Set each ADC to sample one channel
    adc_in_sel_12[2] = (2 << 1);
    adc_in_sel_34[3] = (2 << 2);
    adc_in_sel_34[2] = (2 << 3);
  }

  std::copy(adc_power_down,adc_power_down+sizeof(adc_power_down),adc_temp);
  ser->send_command(adc_temp,sizeof(adc_temp));

  ser->send_command(adc_chnum_clkdiv,sizeof(adc_chnum_clkdiv));

  std::copy(adc_active,adc_active+sizeof(adc_active),adc_temp);
  ser->send_command(adc_temp,sizeof(adc_temp));

  ser->send_command(adc_in_sel_12,sizeof(adc_in_sel_12));
  ser->send_command(adc_in_sel_34,sizeof(adc_in_sel_34));

  return 1;
}