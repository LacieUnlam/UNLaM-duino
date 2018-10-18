#include <MotorDriver.h>
#include <seeed_pwm.h>

#include <SoftwareSerial.h>
#include <Adafruit_NeoPixel.h>
    #ifdef __AVR__
      #include <avr/power.h>
    #endif
#include "MotorDriver.h"

#define PinRx         0
#define PinTx         1
#define VelMotor      150
#define VelGiro       100
#define PinPixel      6
#define CantPixel     8
#define LedIzq        0    //el primer led de la tira (1) va a ser el de la izquierda.
#define LedDer        7
#define LedAde1       3
#define LedAde2       4
#define LedAtr1       2 
#define LedAtr2       5 
#define LedStop1      1
#define LedStop2      6

char Letra;

SoftwareSerial bluetooth (PinRx, PinTx);        /// Llamo bluetooth al objeto de tipo SoftwareSerial con los valores de los pines rx, tx.
MotorDriver motor;          //defino MOTORA = izquierda ---- MOTORB = derecha

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(CantPixel, PinPixel, NEO_GRB + NEO_KHZ800); //creo el objeto "pixels" 


void setup() {
 
  motor.begin();
  bluetooth.begin(9600);
  bluetooth.println("Conexion establecida");

  pixels.begin();

            pixels.setPixelColor(LedIzq, pixels.Color(100,100,100)); 
            pixels.setPixelColor(LedDer, pixels.Color(100,100,100));
            pixels.setPixelColor(LedStop1, pixels.Color(100,100,100)); 
            pixels.setPixelColor(LedStop2, pixels.Color(100,100,100));   
            pixels.setPixelColor(LedAde1, pixels.Color(0,0,0)); 
            pixels.setPixelColor(LedAde2, pixels.Color(0,0,0));      
            pixels.setPixelColor(LedAtr1, pixels.Color(0,0,0)); 
            pixels.setPixelColor(LedAtr2, pixels.Color(0,0,0));
            pixels.show(); 

      delay(1000);

}

void loop() {

Letra = bluetooth.read();       //leo lo que me mande el control

//a partir de acá, analizo el comando recibido
switch (Letra)
  {
   case 'U':         //Avanza

        motor.speed(MOTORA, VelMotor);      //enciendo ambos motores a velocidad normal en directa
        motor.speed(MOTORB, VelMotor);
        
            pixels.setPixelColor(LedIzq, pixels.Color(0,0,0)); 
            pixels.setPixelColor(LedDer, pixels.Color(0,0,0));
            pixels.setPixelColor(LedStop1, pixels.Color(0,0,0)); 
            pixels.setPixelColor(LedStop2, pixels.Color(0,0,0));   
            pixels.setPixelColor(LedAde1, pixels.Color(0,255,0)); // cuando avanza, enciende color  VERDE
            pixels.setPixelColor(LedAde2, pixels.Color(0,255,0));      
            pixels.setPixelColor(LedAtr1, pixels.Color(0,0,0)); 
            pixels.setPixelColor(LedAtr2, pixels.Color(0,0,0));
        
             pixels.show();    //envia el color establecido al pixel nombrado
      break;

   case 'D':         //retrocede
        

        motor.speed(MOTORA, ((-1) * VelMotor));      //enciendo ambos motores a velocidad normal en reversa
        motor.speed(MOTORB, ((-1) * VelMotor));
        
        pixels.setPixelColor(LedAtr1, pixels.Color(70,70,70)); // cuando retrocede, enciende color NARANJA
        pixels.setPixelColor(LedAtr2, pixels.Color(70,70,70));

         pixels.setPixelColor(LedIzq, pixels.Color(0,0,0)); 
         pixels.setPixelColor(LedDer, pixels.Color(0,0,0));
         pixels.setPixelColor(LedStop1, pixels.Color(0,0,0)); 
         pixels.setPixelColor(LedStop2, pixels.Color(0,0,0));   
         pixels.setPixelColor(LedAde1, pixels.Color(0,0,0)); // cuando avanza, enciende color  VERDE
         pixels.setPixelColor(LedAde2, pixels.Color(0,0,0));      
           
         
     pixels.show();    //envia el color establecido al pixel nombrado
        
      break;

   
         
   case 'R':        //derecha
       
        motor.speed(MOTORA, VelGiro);      //si estaba detenido, solo enciendo motor izquierdo
        motor.speed(MOTORB, ((-1) * VelGiro));
       
        pixels.setPixelColor(LedDer, pixels.Color(255,255,0)); // cuando gira a derecha, enciende color AMARILLO
        pixels.setPixelColor(LedIzq, pixels.Color(0,0,0)); 
        pixels.setPixelColor(LedStop1, pixels.Color(0,0,0)); 
        pixels.setPixelColor(LedStop2, pixels.Color(0,0,0));   
        pixels.setPixelColor(LedAde1, pixels.Color(0,0,0)); // cuando avanza, enciende color  VERDE
        pixels.setPixelColor(LedAde2, pixels.Color(0,0,0));      
        pixels.setPixelColor(LedAtr1, pixels.Color(0,0,0)); 
        pixels.setPixelColor(LedAtr2, pixels.Color(0,0,0));
       pixels.show();    //envia el color establecido al pixel nombrado
        
       break;

  
        
 

  case 'L':         //izquierda

        motor.speed(MOTORA, ((-1) * VelGiro));
        motor.speed(MOTORB, VelGiro);      //si estaba detenido, solo enciendo motor derecho 
        

        pixels.setPixelColor(LedIzq, pixels.Color(255,255,0)); // cuando gira izquierda, enciende color AMARILLO
         
        pixels.setPixelColor(LedDer, pixels.Color(0,0,0));
        pixels.setPixelColor(LedStop1, pixels.Color(0,0,0)); 
        pixels.setPixelColor(LedStop2, pixels.Color(0,0,0));   
        pixels.setPixelColor(LedAde1, pixels.Color(0,0,0)); // cuando avanza, enciende color  VERDE
        pixels.setPixelColor(LedAde2, pixels.Color(0,0,0));      
        pixels.setPixelColor(LedAtr1, pixels.Color(0,0,0)); 
        pixels.setPixelColor(LedAtr2, pixels.Color(0,0,0));
        pixels.show();    //envia el color establecido al pixel nombrado
                
      break;

  case 'S':                 //stop: ambos motores apagados
        
         motor.brake(MOTORA);
         motor.brake(MOTORB);
          
         pixels.setPixelColor(LedStop1, pixels.Color(255,0,0)); // cuando se detiene, enciende color 
         pixels.setPixelColor(LedStop2, pixels.Color(255,0,0));
         pixels.setPixelColor(LedIzq, pixels.Color(0,0,0)); 
         pixels.setPixelColor(LedDer, pixels.Color(0,0,0));
             
         pixels.setPixelColor(LedAde1, pixels.Color(0,0,0)); // cuando avanza, enciende color  VERDE
         pixels.setPixelColor(LedAde2, pixels.Color(0,0,0));      
         pixels.setPixelColor(LedAtr1, pixels.Color(0,0,0)); 
         pixels.setPixelColor(LedAtr2, pixels.Color(0,0,0));
         pixels.show();    //envia el color establecido al pixel nombrado
        
      break;
  }

 

}
