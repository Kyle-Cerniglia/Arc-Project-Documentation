#include <SoftwareSerial.h>

SoftwareSerial output(20, 1);

int address = 1;
int directionv = 1;
int speedv = 0;
  
void setup() {
  output.begin(300);
}

void loop() {
  speedv = analogRead(3);
  speedv = map(speedv, 0, 1023, 0, 255);
  
  output.write(address);
  delay(10);
  output.write(directionv);
  delay(10);
  output.write(speedv);
  delay(10);
}
  

