const int A[6] = {0,1,2,3,4,5};
#define EN 6

void setup() {
  Serial.begin(9600);
  for (int x = 0; x < 6; x++){
    pinMode(A[x], OUTPUT);
    digitalWrite(A[x], LOW);
  }
  pinMode(EN, OUTPUT);
  digitalWrite(EN, LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available()) {
    String input = Serial.readStringUntil('\n');  // Read until newline
    unsigned int sel = (unsigned int)input.toInt();
    if (sel <= 42){
      delayMicroseconds(10);
      digitalWrite(EN, LOW);
      delayMicroseconds(10);
      for (unsigned int x=0; x<6; x++){
        if (sel >= (1 << (5-x))){
          digitalWrite(A[5-x], HIGH);
          sel -= (1 << (5-x));
        }
        else{
          digitalWrite(A[5-x], LOW);
        }
      }
      delayMicroseconds(10);
      digitalWrite(EN, HIGH);
      delayMicroseconds(10);
    }
  }
}
