#include "scope_control.h"
#include "scope_serial.h"
#include <algorithm>
#include <cstdio>

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

  //TODO: Delete this and make adc_ch_cfg(int num_ch_on,bool[] ch_ison)
  std::copy(adc_chnum_clkdiv_init,adc_chnum_clkdiv_init+sizeof(adc_chnum_clkdiv_init),adc_chnum_clkdiv);
  ser->send_command(adc_chnum_clkdiv,sizeof(adc_chnum_clkdiv));
  std::copy(adc_active,adc_active+sizeof(adc_active),adc_temp);
  ser->send_command(adc_temp,sizeof(adc_temp));
  std::copy(adc_in_sel_12_init,adc_in_sel_12_init+sizeof(adc_in_sel_12_init),adc_in_sel_12);
  ser->send_command(adc_in_sel_12,sizeof(adc_in_sel_12));
  std::copy(adc_in_sel_34_init,adc_in_sel_34_init+sizeof(adc_in_sel_34_init),adc_in_sel_34);
  ser->send_command(adc_in_sel_34,sizeof(adc_in_sel_34)); 

  return 1;
}

int scope_control::load_default(){
  return 1;
}

int scope_control::ch_on(int ch_num){
  if (ch_num == 1)
    io_out[4] |= (1 << 7);
  else if (ch_num == 2)
    io_out[4] |= (1 << 2);  
  else if (ch_num == 3)
    io_out[3] |= (1 << 5);
  else if (ch_num == 4)
    io_out[3] |= (1 << 0);

  ser->send_command(io_out,sizeof(io_out));
  ser->send_command(dac[ch_num-1],sizeof(dac[1]));
  ser->send_command(pga[ch_num-1],sizeof(pga[1]));

  return 1;
}

int scope_control::ch_off(int ch_num){
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
  return 1;
}

int scope_control::voffset_set(int ch_num, double voffset){
  return 1;
}

int scope_control::bw_set(int ch_num, int bw){
  return 1;
}

