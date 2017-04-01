//#include <SoftwareSerial.h>

//SoftwareSerial com(0, 1);

/*
0: RX
1: TX
2: Light Relay
3: Cs
4: AUX 6
5: PWM L
6: PWM R
7: AUX 9
8: Ad
9: As
10: Bd
11: Bs/MOSI
12: Cd/MISO
13: AUX 5/SCK
14: AUX 1
15: AUX 2
16: AUX 3
17: AUX 4
18: AUX 8
19: AUX 7
*/

int byte1 = 0;
int byte2 = 0;
int byte3 = 0;
int byte4 = 0;
int byte5 = 0;

int timeout = 0;
int checksum = 1;
int checksum_r = 0;
bool valid = true;//false

bool motor_a_d = true;
int motor_a_s = 0;
bool motor_b_d = true;
int motor_b_s = 0;
bool motor_c_d = true;
int motor_c_s = 0;
int motor_ab_s = 0;
int motor_ab_r = 0;//0 = left, 128 = straight, 255 = right

void setup() {
  Serial.begin(300);

  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
  pinMode(14, OUTPUT);
  pinMode(15, OUTPUT);
  pinMode(16, OUTPUT);
  pinMode(17, OUTPUT);
  pinMode(18, OUTPUT);
  pinMode(19, OUTPUT);
}

void loop() {
  comg:
  //Connection initiation
  if(Serial.available()){
    if(Serial.read() == 32){
      Serial.write(64);
      while(Serial.available() == false){
        Serial.write(64);
        timeout++;
        if(timeout > 100){
          timeout = 0;
          goto comg;
        }
      }
      
      //Value reception
      byte1 = Serial.read();
      Serial.write(64);
      while(Serial.available() == false){
        Serial.write(64);
        timeout++;
        if(timeout > 100){
          timeout = 0;
          goto comg;
        }
      }

      byte2 = Serial.read();
      Serial.write(64);
      while(Serial.available() == false){
        Serial.write(64);
        timeout++;
        if(timeout > 100){
          timeout = 0;
          goto comg;
        }
      }

      byte3 = Serial.read();
      Serial.write(64);
      while(Serial.available() == false){
        Serial.write(64);
        timeout++;
        if(timeout > 100){
          timeout = 0;
          goto comg;
        }
      }

      byte4 = Serial.read();
      Serial.write(64);
      while(Serial.available() == false){
        Serial.write(64);
        timeout++;
        if(timeout > 100){
          timeout = 0;
          goto comg;
        }
      }

      byte5 = Serial.read();
      Serial.write(64);
      while(Serial.available() == false){
        Serial.write(64);
        timeout++;
        if(timeout > 100){
          timeout = 0;
          goto comg;
        }
      }
      
      //Checksum reception
      checksum_r = Serial.read();
      Serial.write(64);
      delay(10);
    }

    //Checksum Calculation
    checksum = byte1 + byte2 + byte3 + byte4 + byte5;
    while(checksum > 255){
      checksum -= 255;
    }
  }

  //Checksum validity
  if(checksum == checksum_r && checksum != 0){
    valid = true;
    digitalWrite(18, HIGH);
  }
  else{
    valid = false;
    //digitalWrite(18, LOW);
  }

  if(valid == true){
    if(byte2 < 128){
      motor_ab_s = map(byte2, 127, 0, 0, 255);
    }
    else{
      motor_ab_s = map(byte2, 128, 255, 0, 255);
    }

    if(byte3 < 128){
      motor_a_d = true;
      motor_b_d = false;
    }
    else if(byte3 > 128){
      motor_a_d = false;
      motor_b_d = true;
    }
    else{
      if(byte2 < 128){
        motor_a_d = true;
        motor_b_d = true;
      }
      else{
        motor_a_d = false;
        motor_b_d = false;
      }
    }
    motor_ab_r = byte3;

    if(byte4 < 128){
      motor_c_d = false;
      motor_c_s = map(byte4, 127, 0, 0, 255);
    }
    else{
      motor_c_d = true;
      motor_c_s = map(byte4, 128, 255, 0, 255);
    }
  }

  motor_b_s = motor_ab_s;
  motor_a_s = motor_ab_s;

  if(motor_a_d = true){
    digitalWrite(8, HIGH);
  }
  else{
    digitalWrite(8, LOW);
  }
  if(motor_b_d = true){
    digitalWrite(10, HIGH);
  }
  else{
    digitalWrite(10, LOW);
  }
  if(motor_c_d = true){
    digitalWrite(12, HIGH);
  }
  else{
    digitalWrite(12, LOW);
  }

  analogWrite(9, motor_a_s);
  analogWrite(11, motor_b_s);
  analogWrite(3, motor_c_s);

  checksum = 1;
  checksum_r = 0;
  byte1, byte2, byte3, byte4, byte5 = 0;
}
