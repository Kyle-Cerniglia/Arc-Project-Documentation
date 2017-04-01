/*
0-3.76eV
D0-D5  0-5    LCD
D6     6      LCD Contrast (64)
C0     14     Variable Voltage Measurement
C1-C3  15-17  A-C
D7     7      1
B0     8      2
B1     9      3
B2     10     4
C4     18     L
C5     19     R
*/

#include <EEPROM.h>
#include <LiquidCrystal.h>

LiquidCrystal lcd(5,4,3,2,1,0);

int eeprom_read = 0;
int mode = 0; //Mode 0: Menu, Mode 1: Adj Voltage, Mode 2: A-C Readout, Mode 3: Output 1, Mode 4: Output 2, Mode 5: Output 3, Mode 6: Output 4

int read_adj = 0;

float freq_1 = 0;
int freq_1t = 0;
int freq_2 = 1;
int freq_2f = freq_2;
int freq_2t = 0;
float amplitude_2m = 5;
float amplitude_2f = 0;
int amplitude_2 = 0;
int freq_2c = 0;
float freq_3 = 0;
int freq_3t = 0;
float freq_4 = 0;
int freq_4t = 0;
int input_a = 0;
int input_af = 0;

void printdata(void);

void setup() {
  pinMode(14, INPUT);
  pinMode(15, INPUT);
  pinMode(16, INPUT);
  pinMode(17, INPUT);

  pinMode(18, INPUT);
  digitalWrite(18, HIGH);
  pinMode(19, INPUT);
  digitalWrite(19, HIGH);

  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  
  lcd.begin(16, 2);
  analogWrite(6, 64);
  lcd.print("Power Unit");
  lcd.setCursor(0, 1);
  lcd.print("Active");

  delay(1500);

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("HW Version: ");
  eeprom_read = EEPROM.read(4) / 10;
  lcd.print(eeprom_read);
  lcd.print(".");
  eeprom_read = EEPROM.read(4) - 10;
  lcd.print(eeprom_read);
  lcd.setCursor(0, 1);
  lcd.print("FW Version: ");
  eeprom_read = EEPROM.read(5) / 10;
  lcd.print(eeprom_read);
  lcd.print(".");
  eeprom_read = EEPROM.read(5) - 10;
  lcd.print(eeprom_read);

  delay(1500);

  lcd.clear();

}

void loop() {
  /*Adjustable voltage
  lcd.clear();
  read_adj = analogRead(14);
  lcd.print(read_adj);
  delay(50);
  */
  
  /* Square wave
  freq_1t = (1.0 / (freq_1 * 2.0)) * 1000000.0;
  digitalWrite(7, HIGH);
  delayMicroseconds(freq_1t);
  digitalWrite(7, LOW);
  delayMicroseconds(freq_1t);
  */

  //triangle wave
  freq_2 = 0;
  freq_2t = 0;
  freq_2c = 0;
  freq_2t = (1.0 / freq_2f) * 6000.0;
  amplitude_2f = amplitude_2m / 50.0;
  amplitude_2 = amplitude_2f * 100;
  amplitude_2 = map(amplitude_2, 0, 500, 0, 255);
  while(freq_2c < 50){
    analogWrite(9, freq_2);
    delayMicroseconds(freq_2t);
    freq_2 += amplitude_2;
    freq_2c++;
    printdata();
  }
  while(freq_2c < 100){
    analogWrite(9, freq_2);
    delayMicroseconds(freq_2t);
    freq_2 -= amplitude_2;
    freq_2c++;
    printdata();
  }
  freq_2c = 0;
  freq_2 = 0;
  
  /*Input reading
  lcd.clear();
  input_a = analogRead(15);
  input_a = map(input_a, 0, 1023, 0, 500);
  input_af = input_a;
  //input_af /= 100;
  lcd.print(input_af);
  delay(50);
  */
}

void printdata(void){
  lcd.clear();
  
  input_a = analogRead(15);
  //input_a = map(input_a, 0, 1023, 0, 500);
  //input_af = input_a;
  //input_af /= 100;
  lcd.print(input_a);
}

