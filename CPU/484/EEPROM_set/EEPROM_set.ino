#include <EEPROM.h>

const int core = 4;
const int cspeed = 16;
const int hardware = 10;
const int software = 10;
const int serial = 0; //(0 for test)
const int month = 7;
const int year = 16;

void setup() {
  EEPROM.write(0, core);
  EEPROM.write(1, cspeed);
  EEPROM.write(2, hardware);
  EEPROM.write(3, software);
  EEPROM.write(4, serial);
  EEPROM.write(5, month);
  EEPROM.write(6, year);
}

void loop() {

}
