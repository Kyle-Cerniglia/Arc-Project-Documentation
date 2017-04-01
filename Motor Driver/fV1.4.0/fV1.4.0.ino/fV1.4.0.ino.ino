#include <SoftwareSerial.h>
#include <EEPROM.h>

//+OUT Pin 0 Direction = 1
//-OUT Pin 1 Direction = 2
//RX IN Pin 2

SoftwareSerial input(2, 20);

int address = EEPROM.read(0);//SET ADDRESS
int addressin = 0;
int directionv = 0;
int speedv = 0;

void setup() {
  input.begin(300);
}

void loop() {
    if(input.available()){
      addressin = input.read();
      if(address == addressin){
        while(!input.available()){}
        directionv = input.read();
        if((directionv == 1) || (directionv == 2)){
          while(!input.available()){}
          speedv = input.read();

          switch(directionv){
            case 1:
              analogWrite(0, speedv);
              analogWrite(1, 0);
            break;

            case 2:
              analogWrite(0, 0);
              analogWrite(1, speedv);
              break;

            default:
              analogWrite(0, 0);
              analogWrite(1, 0);
              break;
          }
        }
     }
    }
}
