//ROV V2.0.1
//Pinout:
//0: PD0 (RX)
//1: PD1 (TX)
//2: PD2 (Lights)
//3: PD3 (Shield 5)
//4: PD4 (Shield 6)
//5: PD5 (PWM1)
//6: PD6 (PWM2)
//7: PD7 (Shield 9)
//8: PB0 (Motor 1 Direction)
//9: PB1 (Motor 1 Speed)
//10: PB2 (Motor 2 Direction)
//11: PB3 (MOSI/Motor 2 Speed)
//12: PB4 (MISO/Motor 3 Direction)
//13: PB5 (SCK/Motor 3 Speed)
//14: PC0 (Shield 1)
//15: PC1 (Shield 2)
//16: PC2 (Shield 3)
//17: PC3 (Shield 4)
//18: PC4 (Shield 8)
//19: PC5 (Shield 7)

bool motor1_d = false;
int motor1_s = 0;
bool motor2_d = false;
int motor2_s = 0;
bool motor3_d = false;
int motor3_s = 0;
int byte_c1 = 0xAA;
int byte_c2 = 0xBB;
int byte_jlx = 0;
int byte_jly = 0;
int byte_jrx = 0;
int byte_jry = 0;
int byte_b = 0;
int joy_clx = 0;
int joy_cly = 0;
int joy_crx = 0;
int joy_cry = 0;

void motor();
//void calibrate();

void setup() {
  Serial.begin(9600);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
}

void loop() {
  //Reception
  if(Serial.available() == true){
    //Reception
    if(Serial.read() == byte_c1){
      while(!Serial.available()){}
      if(Serial.read() == byte_c2){
       while(!Serial.available()){}
       byte_jlx = Serial.read();
       while(!Serial.available()){}
       byte_jly = Serial.read();
       while(!Serial.available()){}
       byte_jrx = Serial.read();
       while(!Serial.available()){}
       byte_jry = Serial.read();
       while(!Serial.available()){}
       byte_b = Serial.read();
      }
    }
  }

  //Parsing
  if(byte_b == 1){
    calibrate();
  }
  if(byte_jry == joy_cry){
    motor3_s = 0;
  }
  if(byte_jry > joy_cry){
    //byte_jry -= joy_cry;
    //motor3_s = map(byte_jry, joy_cry, 255, 0, 255);
    motor3_s = byte_jry;
    motor3_d = false;
  }
  if(byte_jry < joy_cry){
    //motor3_s = map(byte_jry, joy_cry, 0, 0, 255);
    motor3_s = byte_jry;
    motor3_d = true;
  }
  analogWrite(13, 128);
  //motor();
}

void motor(){
  //Direction
  if(motor1_d == false){
    digitalWrite(8, LOW);
  }
  else{
    digitalWrite(8, HIGH);
  }
  if(motor2_d == false){
    digitalWrite(10, LOW);
  }
  else{
    digitalWrite(10, HIGH);
  }
  if(motor3_d == false){
    digitalWrite(12, LOW);
  }
  else{
    digitalWrite(12, HIGH);
  }

  //Speed
  analogWrite(9, motor1_s);
  analogWrite(11, motor2_s);
  analogWrite(13, motor3_s);
}

void calibrate(){
  joy_clx = byte_jlx;
  joy_cly = byte_jly;
  joy_crx = byte_jrx;
  joy_cry = byte_jry;
}

