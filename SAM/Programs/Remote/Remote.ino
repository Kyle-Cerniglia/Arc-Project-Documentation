//Remote V1.0.1
//0: (Mode)
//2: (Right front button)
//3: (Left front button)
//4: (L joy x)
//5: (Right back button)
//6: (L joy y)
//7: (Left back button)
//10: (R joy y)
//11: (TX)
//12: (R joy x)

#include <SoftwareSerial.h>

SoftwareSerial output(20, 11);

bool mode = false;
bool button_fl = false;
bool button_fr = false;
bool button_bl = false;
bool button_br = false;
int joy_lx = 0;
int joy_ly = 0;
int joy_rx = 0;
int joy_ry = 0;
int byte_c1 = 0xAA;
int byte_c2 = 0xBB;
int byte_jlx = 0x00;
int byte_jly = 0x00;
int byte_jrx = 0x00;
int byte_jry = 0x00;
int byte_b = 0x00;

void setup() {
  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);
  output.begin(9600);
  pinMode(0, INPUT);
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(5, INPUT);
  pinMode(7, INPUT);
  pinMode(11, OUTPUT);
}

void loop() {
  //Buttons
  if(digitalRead(3) == 0){
    button_fl = true;
  }
  else{
    button_fl = false;
  }
  
  if(digitalRead(2) == 0){
    button_fr = true;
  }
  else{
    button_fr = false;
  }
  
  if(digitalRead(7) == 0){
    button_bl = true;
  }
  else{
    button_bl = false;
  }
  
  if(digitalRead(5) == 0){
    button_br = true;
  }
  else{
    button_br = false;
  }

  //Joy
  joy_lx = analogRead(4);
  joy_lx = map(joy_lx, 0, 1023, 0, 255);
  joy_ly = analogRead(6);
  joy_ly = map(joy_ly, 0, 1023, 0, 255);
  joy_rx = analogRead(12);
  joy_rx = map(joy_rx, 0, 1023, 0, 255);
  joy_ry = analogRead(10);
  joy_ry = map(joy_ry, 0, 1023, 0, 255);

  //Data parsing
  byte_jlx = joy_lx;
  byte_jly = joy_ly;
  byte_jrx = joy_rx;
  byte_jry = joy_ry;
  if(button_fl == true){
    byte_b += 0x01;
  }
  if(button_fr == true){
    byte_b += 0x02;
  }
  if(button_bl == true){
    byte_b += 0x04;
  }
  if(button_br == true){
    byte_b += 0x08;
  }

  //Transmission
  output.write(byte_c1);
  output.write(byte_c2);
  output.write(byte_jlx);
  output.write(byte_jly);
  output.write(byte_jrx);
  output.write(byte_jry);
  output.write(byte_b);

  //Resets
  byte_b = 0;
}
