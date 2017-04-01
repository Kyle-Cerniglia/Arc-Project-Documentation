#include <SoftwareSerial.h>

SoftwareSerial output(20, 1);

int speedi = 0;
  
void setup() {
  output.begin(300);
}

void loop() {
  speedi = analogRead(3);
  speedi = map(speedi, 0, 1023, 0, 255);
  output.write(speedi);
}
