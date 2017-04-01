#include <SoftwareSerial.h>

/*
0: Mode
2: RF
3: LF
4: L Joy X
5: RB
6: L Joy Y
7: LB
9: RX
10: R Joy Y
11: TX
12: R Joy X

Buttons are pulled high
Mode 1 is low, mode 2 is high

Byte packet
L Joy X
L Joy Y
R Joy X
R Joy Y
RB, RF, LB, LF
*/

SoftwareSerial com(9, 11);

int byte1 = 0;
int byte2 = 0;
int byte3 = 0;
int byte4 = 0;
int byte5 = 0;

int timeout = 0;
int checksum = 0;

void setup() {
  pinMode(0, INPUT);
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
  pinMode(6, INPUT);
  pinMode(7, INPUT);
  pinMode(9, INPUT);
  pinMode(10, INPUT);
  pinMode(11, OUTPUT);
  pinMode(12, INPUT);
  pinMode(13, OUTPUT);

  com.begin(300);
  //Serial.begin(9600);
}

void loop() {
  //Data load
  byte1 = analogRead(6);
  byte2 = analogRead(7);
  byte3 = analogRead(11);
  byte4 = analogRead(10);

  if(digitalRead(3) == LOW){
    byte5 += 1;
  }
  if(digitalRead(7) == LOW){
    byte5 += 2;
  }
  if(digitalRead(2) == LOW){
    byte5 += 4;
  }
  if(digitalRead(5) == LOW){
    byte5 += 8;
  }

  //Data formatting
  byte1 = map(byte1, 0, 1023, 0, 255);
  byte2 = map(byte2, 0, 1023, 0, 255);
  byte3 = map(byte3, 0, 1023, 0, 255);
  byte4 = map(byte4, 0, 1023, 0, 255);

  comg:
  digitalWrite(13, LOW);
  //Connection initiation
  com.write(32);
  while(com.available() == false){
    digitalWrite(13, HIGH);
    com.write(32);
    timeout++;
    if(timeout > 100){
      timeout = 0;
      goto comg;
    }
  }
  if(com.read() != 64){
    goto comg;
  }
  digitalWrite(13, LOW);
  
  //Value transmission
  com.write(byte1);
  while(com.available() == false){
    digitalWrite(13, HIGH);
    com.write(byte1);
    timeout++;
    if(timeout > 100){
      timeout = 0;
      goto comg;
    }
  }
  if(com.read() != 64){
    goto comg;
  }
  digitalWrite(13, LOW);

  com.write(byte2);
  while(com.available() == false){
    digitalWrite(13, HIGH);
    com.write(byte2);
    timeout++;
    if(timeout > 100){
      timeout = 0;
      goto comg;
    }
  }
  if(com.read() != 64){
    goto comg;
  }
  digitalWrite(13, LOW);

  com.write(byte3);
  while(com.available() == false){
    digitalWrite(13, HIGH);
    com.write(byte3);
    timeout++;
    if(timeout > 100){
      timeout = 0;
      goto comg;
    }
  }
  if(com.read() != 64){
    goto comg;
  }
  digitalWrite(13, LOW);

  com.write(byte4);
  while(com.available() == false){
    digitalWrite(13, HIGH);
    com.write(byte4);
    timeout++;
    if(timeout > 100){
      timeout = 0;
      goto comg;
    }
  }
  if(com.read() != 64){
    goto comg;
  }
  digitalWrite(13, LOW);

  com.write(byte5);
  while(com.available() == false){
    digitalWrite(13, HIGH);
    com.write(byte5);
    timeout++;
    if(timeout > 100){
      timeout = 0;
      goto comg;
    }
  }
  if(com.read() != 64){
    goto comg;
  }
  digitalWrite(13, LOW);

  //Checksum calculation
  checksum = byte1 + byte2 + byte3 + byte4 + byte5;
  while(checksum > 255){
    checksum -= 255;
  }
  
  //Checksum transmission
  com.write(checksum);
  while(com.available() == false){
    digitalWrite(13, HIGH);
    com.write(checksum);
    timeout++;
    if(timeout > 100){
      timeout = 0;
      goto comg;
    }
  }
  if(com.read() != 64){
    goto comg;
  }
  digitalWrite(13, LOW);
  

  byte1, byte2, byte3, byte4, byte5 = 0;
  timeout = 0;
  checksum = 0;
  
}
