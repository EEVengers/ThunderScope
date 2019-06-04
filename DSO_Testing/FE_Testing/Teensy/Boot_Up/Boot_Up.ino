#include <Wire.h>

void setup() {
  // put your setup code here, to run once:
  for (int x =0; x<8; x++){
  pinMode(3, OUTPUT);  
  pinMode(6, OUTPUT);  
  digitalWrite(3, HIGH);
  digitalWrite(6, HIGH);

  Wire.begin();

  Wire.beginTransmission(12);
  Wire.write(7);  // address high byte
  Wire.write(252);  // address low byte
  Wire.endTransmission();
  
  }
}

void loop() {
  // put your main code here, to run repeatedly:

}
