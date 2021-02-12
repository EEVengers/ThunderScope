#include <Wire.h>
#include <SPI.h>

void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT);
  pinMode(4, OUTPUT);  
  pinMode(5, INPUT);
  pinMode(SS, OUTPUT);    
  
  analogWriteResolution(12);
  analogWrite(A14, 1114); 
  
  digitalWrite(2, HIGH); //DC coupling ON when HIGH
  digitalWrite(4, HIGH); //-40db Attenuator ON when LOW
  
  for (int x =0; x<8; x++){
  Wire.begin();
  Wire.beginTransmission(12);
  Wire.write(7);  // data high byte
  Wire.write(4);  // data low byte
  Wire.endTransmission();
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  if (!digitalRead(5))
    digitalWrite(4, LOW);
}
