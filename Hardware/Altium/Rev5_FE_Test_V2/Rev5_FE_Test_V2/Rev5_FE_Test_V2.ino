#include <Wire.h>

const int CS = 10;
const int SCLK = 13;
const int SDIO = 11;

const int TERM = 0;
const int CPL = 1;
const int ATTEN = 2;

const bool LATCHING = false;

void setup() {
  // initialize serial:
  Serial.begin(9600);

  pinMode (CS, OUTPUT);
  digitalWrite (CS, HIGH);
  pinMode (SCLK, OUTPUT);
  digitalWrite (SCLK, HIGH);
  pinMode (SDIO, OUTPUT);
  digitalWrite (SDIO, LOW);

  pinMode (TERM, OUTPUT);
  digitalWrite (TERM, LOW);
  pinMode (CPL, OUTPUT);
  digitalWrite (CPL, LOW);
  pinMode (ATTEN, OUTPUT);
  digitalWrite (ATTEN, LOW);

  Wire.begin();
}

void loop() {
  // if there's any serial available, read it:
  while (Serial.available() > 0) {
    String command = Serial.readString();
    command.trim();
    Serial.println(command);

    if (command.indexOf("PGA") != -1){
      String preamp_str = command.substring(4, 5);
      int preamp = preamp_str.toInt();
      String attenuation_str = command.substring(6);
      int attenuation = attenuation_str.toInt();
      setPGA(preamp,attenuation);
    }
    else if (command.indexOf("DAC") != -1){
      String dac_code_str = command.substring(4);
      int dac_code = dac_code_str.toInt();
      setDAC(dac_code);
    }
    else if (command.indexOf("DPOT") != -1){
      String dpot_code_str = command.substring(5);
      int dpot_code = dpot_code_str.toInt();
      setDPOT(dpot_code);
    }
    else if (command.indexOf("ATTEN") != -1){
      String atten_str = command.substring(6);
      int atten = atten_str.toInt();
      setATTEN(atten);
    }
    else if (command.indexOf("CPL") != -1){
      String cpl_str = command.substring(4);
      int cpl = cpl_str.toInt();
      setCPL(cpl);
    }
    else if (command.indexOf("TERM") != -1){
      String term_str = command.substring(5);
      int term = term_str.toInt();
      setTERM(term);
    }
    else{
      Serial.println("Invalid Command");
    }

  }
}

void setPGA(int preamp, int attenuation){
    
  uint32_t settings = 0x00000400;
  if (preamp == 1)
    settings |= 0x00000010;
  
  settings |= ((uint32_t) (attenuation/2) & 0x0000000F);
  
  digitalWrite(CS,LOW);
  for (int x = 0; x < 24; x++){
    digitalWrite(SCLK,LOW);
    digitalWrite(SDIO,((settings >> (23-x)) & 0x00000001));
    delayMicroseconds(1);
    digitalWrite(SCLK,HIGH);
    delayMicroseconds(1);
  }
  digitalWrite(CS,HIGH);
  digitalWrite(SDIO,0);

}

void setDAC(int dac_code){
  uint16_t command_data = 0x0000;
  command_data |= (uint16_t)dac_code & 0x0FFF;

  Wire.beginTransmission(0b1100000);  
  Wire.write(0b01011000);
  Wire.write(command_data >> 8);
  Wire.write(command_data & 0x00FF);
  Wire.endTransmission();
}

void setDPOT(int dpot_code){
  uint16_t command_data = 0x0000;
  command_data |= 0x06 << 12; //wiper 2
  command_data |= (uint16_t)dpot_code & 0x03FF;

  Wire.beginTransmission(0b0101110);  
  Wire.write(0b01011000);
  Wire.write(command_data >> 8);
  Wire.write(command_data & 0x00FF);
  Wire.endTransmission();
}

void setATTEN(int atten){
  if (atten == 1)
    digitalWrite (ATTEN, HIGH);
  else 
    digitalWrite (ATTEN, LOW);
}

void setCPL(int cpl){
  if (cpl == 1)
    digitalWrite (CPL, HIGH);
  else 
    digitalWrite (CPL, LOW);
}

void setTERM(int term){
  if (term == 1)
    digitalWrite (TERM, HIGH);
  else 
    digitalWrite (TERM, LOW);
}
