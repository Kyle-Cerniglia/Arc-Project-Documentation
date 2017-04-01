#include <LiquidCrystal.h>
LiquidCrystal lcd(5, 4, 3, 2, 1, 0);

double var_b = 5;
double voltage_b = 0;
int voltaged_b = 0;
double var_p = 0;
double voltage_p = 0;
int voltaged_p = 0;

void setup() {
  lcd.begin(16,2);
  pinMode(6, INPUT);
  pinMode(7, INPUT);
  pinMode(10, OUTPUT);
}

void loop() {
  lcd.clear();
  
  var_b = analogRead(6);
  var_b = map(var_b, 0, 1023, 0, 500);

  voltage_b = (var_b * 540) / 100;
  voltaged_b = voltage_b;
  voltage_b = voltaged_b;
  voltage_b /= 100;

  var_p = analogRead(7);
  var_p = map(var_p, 0, 1023, 0, 500);

  voltage_p = (var_p * 540) / 100;
  voltaged_p = voltage_p;
  voltage_p = voltaged_p;
  voltage_p /= 100;

  lcd.setCursor(0,0);
  lcd.print("BAT:");
  lcd.print(voltage_b);
  lcd.print("V");
  
  lcd.setCursor(0,1);
  lcd.print("PAN:");
  lcd.print(voltage_p);
  lcd.print("V");

  if(var_b < 250 && var_p > 90){
    digitalWrite(10, HIGH);
    lcd.setCursor(11,1);
    lcd.print("CHRG");
  }
  else if(var_b >= 250){
    digitalWrite(10, LOW);
    lcd.setCursor(11,0);
    lcd.print("NOT");
    lcd.setCursor(11,1);
    lcd.print("CHRG");
  }
  else{
    digitalWrite(10, LOW);
    lcd.setCursor(11,0);
    lcd.print("SLEP");
  }
  delay(10000);
}
