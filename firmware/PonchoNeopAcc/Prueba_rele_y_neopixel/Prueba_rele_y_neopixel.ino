#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
#include <avr/power.h>
#endif

#define PIN            6

#define NUMPIXELS      8

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

int delayval = 500; // delay for half a second

void setup() {
 
#if defined (__AVR_ATtiny85__)
  if (F_CPU == 16000000) clock_prescale_set(clock_div_1);
#endif

  pixels.begin(); 
}

void loop() {

  for(int i=0;i<NUMPIXELS;i++){
    pixels.setPixelColor(i, pixels.Color(100,0,0)); 
    pixels.setPixelColor(i-1, pixels.Color(0,100,0));
    pixels.setPixelColor(i-2, pixels.Color(0,0,100));
    pixels.show(); 
    delay(200); 
    pixels.setPixelColor(i-1, pixels.Color(0,0,0));
    pixels.setPixelColor(i-2, pixels.Color(0,0,0));
    pixels.setPixelColor(i, pixels.Color(0,0,0));
    pixels.show();

    if(i>=0 && i<4){
      digitalWrite(7,HIGH);
    }
    else{
      digitalWrite(7,LOW);
    }
   }
}
