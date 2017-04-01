#include <EEPROM.h>

const int serial = 8;
const int devicetype = 2;
const int month = 8;
const int year = 16;
const int hardware = 10;
const int firmware = 10;

void setup() {
  EEPROM.write(0, serial);
  EEPROM.write(1, devicetype);
  EEPROM.write(2, month);
  EEPROM.write(3, year);
  EEPROM.write(4, hardware);
  EEPROM.write(5, firmware);
}

void loop() {

}
