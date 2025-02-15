#define SEL0 17
#define SEL1 16
#define SEL2 15

void setup() {
  Serial.begin(9600);
  pinMode(SEL0, OUTPUT);
  pinMode(SEL1, OUTPUT);
  pinMode(SEL2, OUTPUT);
  digitalWrite(SEL0, LOW);
  digitalWrite(SEL1, LOW);
  digitalWrite(SEL2, LOW);
}

void loop() {
  while (Serial.available() > 0) {
    char input = Serial.read();
    if (input == '0'){  //AVDD
      digitalWrite(SEL0, LOW);
      digitalWrite(SEL1, LOW);
      digitalWrite(SEL2, LOW);
    }
    else if (input == '1'){ //AVDD2
      digitalWrite(SEL0, LOW);
      digitalWrite(SEL1, LOW);
      digitalWrite(SEL2, HIGH);
    }
    else if (input == '2'){ //DVDD
      digitalWrite(SEL0, HIGH);
      digitalWrite(SEL1, LOW);
      digitalWrite(SEL2, LOW);
    }
    else if (input == '3'){ //OVDD
      digitalWrite(SEL0, HIGH);
      digitalWrite(SEL1, HIGH);
      digitalWrite(SEL2, LOW);
    }
    Serial.print(input);
  }
}
