//0 RX1
//1 TX1
//2 RX2
//3 TX2
//4 RX3/SCK
//5 TX3/MISO
//6 D1/A1/ADC1/MOSI
//7 D2/A2/ADC1
//8 D3/A3
//9 D4

//Serial codes
//32  tx confirmation

#include <SoftwareSerial.h>

SoftwareSerial serial1(0, 1);
SoftwareSerial serial2(3, 2);
SoftwareSerial serial3(4, 5);

int count = 0;
int sum = 0;
int var = 0;

//Serial
int rxarray1[9];
int txarray1[9];
int rxarray2[9];
int txarray2[9];
int rxarray3[9];
int txarray3[9];

//Function prototype
void rx1(void);
void tx1(void);
void rx2(void);
void tx2(void);
void rx3(void);
void tx3(void);

void setup() {
  serial1.begin(9600);
  serial2.begin(9600);
  serial3.begin(9600);
  pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(3, OUTPUT);
  //analogReference(DEFAULT);
  //pinMode(0, INPUT);
}

void loop() {
  /*
  var = analogRead(6);
  txarray2[0] = 8;
  txarray2[1] = map(var, 0, 1023, 0, 255);
  //txarray2[1] = 255;
  txarray2[2] = 8;
  txarray2[3] = 8;
  txarray2[4] = 8;
  txarray2[5] = 8;
  txarray2[6] = 8;
  txarray2[7] = 8;
  tx2();
  */
  
  if(serial2.available() == true){
    digitalWrite(6, HIGH);
    //rx2();
  }
  
}

void rx1(){
  
}

void tx1(){
  
}

void rx2(){
  digitalWrite(6, HIGH);
  rxbeginning:
  //Reset
  sum = 0;
  while(count < 9){
    rxarray2[count] = 0;
    count++;
  }
  count = 0;
  if(serial2.available() == 9){
    //Read
    while(count < 9){
      rxarray2[count] = serial2.read();
      count++;
    }
    count = 0;
    //Check sum
    while(count < 8){
      sum += rxarray2[count];
      count++;
    }
    while(sum > 255){
      sum -= 255;
    }
    count = 0;
    if(sum != rxarray2[8]){
      serial2.flush();
      goto rxbeginning;
    }

    //Confirmation
    while(count < 100){
      serial2.write(32);
      //delay(1);
      count++;
    }
    count = 0;
    serial2.flush();
    //Data save=================
    //analogWrite(6, rxarray2[1]);
  }
  else if(serial2.available() > 9){
    serial2.flush();
    //analogWrite(6, 0);
    delay(1);
    goto rxbeginning;
  }
  else{
    //analogWrite(6, 0);
    delay(1);
    goto rxbeginning;
  }
}

void tx2(){
  while(count < 8){
    txarray2[8] += txarray2[count];
    count++;
  }
  sum = txarray2[8];
  while(sum > 255){
      sum -= 255;
  }
  txarray2[8] = sum;
  count = 0;
  serial2.flush();
  while(serial2.available() == false){
    //serial2.flush();
    //while(count < 8){
      //serial2.read();
      //count++;
    //}
    count = 0;
    while(count < 9){
      serial2.write(txarray2[count]);
      count++;
    }
    count = 0;
    delay(2);
  }
  digitalWrite(7, HIGH);
  while(count < 9){
    txarray2[count] = 0;
    count++;
  }
  count = 0;
}

void rx3(){
  
}

void tx3(){
  
}

