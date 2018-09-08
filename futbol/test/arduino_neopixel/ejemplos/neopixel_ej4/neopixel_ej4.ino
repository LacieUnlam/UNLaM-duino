/*

  Autor: Germán Cardozo

  El siguiente código define 8 colores distintos y asigna cada uno a un led.
  Y crea la funcion ledsOff() para apagar los 8 leds juntos.
  Requiere la instalacion de la libreria Adafruit Neopixel.
 

*/

#include <Adafruit_NeoPixel.h>    // importa libreria


#define VERDE    0,255,0
#define AZUL     0,0,255
#define ROJO     255,0,0
#define AMARILLO 255,255,0
#define CIAN     0,255,255
#define MAGENTA  255,0,255
#define BLANCO   180,255,255
#define NARANJA   255,150,0

//#define AZUL 0,0,255
//#define AZUL 0,0,255
// Primer parametro = cantidad de pixeles en la tira
// Segundo parametro = pin de conexion a Arduino
// Tercer parametro:
//   NEO_KHZ800  800 KHz velocidad de datos (WS2812 y nuevos)
//   NEO_KHZ400  400 KHz velocidad de datos (WS2811 y mas antiguos)
//   NEO_GRB     flujo de datos en orden GRB (WS2812 y nuevos)
//   NEO_RGB     flujo de datos en orden RGB (versiones mas antiguas)

Adafruit_NeoPixel tira = Adafruit_NeoPixel(8, 2, NEO_GRB + NEO_KHZ800); // creacion de objeto "tira"
// con una cantidad de 8 pixeles, sobre pin 2 de Arduino y configurado para WS2812

void setup(){
  tira.begin();       // inicializacion de la tira
  tira.show();        // muestra datos en pixel
}

void apagaLeds()
{
  for(int i = 0; i < 8; i++)
  {
    tira.setPixelColor(i, 0, 0, 0); // apaga el pixel  
  }
  tira.show();
}

void loop(){
  tira.setBrightness(20);               // brillo global para toda la tira


  tira.setPixelColor(0,CIAN);       //enciende 1º led color cian
  tira.setPixelColor(1,AZUL);       //enciende 2º led color azul
  tira.setPixelColor(2,VERDE);      //enciende 3º led color verde
  tira.setPixelColor(3,AMARILLO);   //enciende 4º led color amarillo
  tira.setPixelColor(4,NARANJA);    //enciende 5º led color naranja
  tira.setPixelColor(5,ROJO);       //enciende 6º led color rojo
  tira.setPixelColor(6,MAGENTA);    //enciende 7º led color magenta
  tira.setPixelColor(7,BLANCO);     //enciende 8º led color blanco
  
  tira.show();
  delay(500);       // breve demora de medio segundo

  apagaLeds();
  
  delay(500);       // breve demora de medio segundo
  
   
}
