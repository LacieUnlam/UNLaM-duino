//#include <FiniteStateMachine.h>

#define OPTO_DI digitalRead(10)
#define OPTO_DD digitalRead(11)
#define OPTO_TI digitalRead(12)
#define OPTO_TD digitalRead(13)

#define SALIDA_1 0
#define SALIDA_2 1
#define SALIDA_3 2
#define SALIDA_4 4

#define PULSADOR_DELANTERO digitalRead(16)
#define PULSADOR_TRASERO digitalRead(18)
#define PULSADOR_IZQUIERDO digitalRead(20)
#define PULSADOR_DERECHO digitalRead(22)

#define CONSUMO_DERECHO analogRead(30)
#define CONSUMO_IZQUIERDO analogRead(31)

#define HABILITACION_MOTORES HABILITACION_DERECHA; HABILITACION_IZQUIERDA
#define HABILITACION_DERECHA digitalWrite(25, HIGH)
#define HABILITACION_IZQUIERDA digitalWrite(28, HIGH)

#define DESHABILITACION_DERECHA digitalWrite(25, LOW)
#define DESHABILITACION_IZQUIERDA digitalWrite(25, LOW)


#define MOTOR_IZQUIERDO_ADELANTE digitalWrite(27, LOW); digitalWrite(29, HIGH)
#define MOTOR_IZQUIERDO_ATRAS digitalWrite(27, HIGH); digitalWrite(29, LOW)
#define MOTOR_DERECHO_ADELANTE digitalWrite(24, LOW); digitalWrite(26, HIGH)
#define MOTOR_DERECHO_ATRAS digitalWrite(24, HIGH); digitalWrite(26, LOW)

#include <FiniteStateMachine.h>


State Pruebas = State(PruebasUpdate);  //no operation
State Espera = State(EsperaEnter, EsperaUpdate, NULL);  //this state fades the LEDs in
State SacarPalas = State(SacarPalasUpdate);  //this state flashes the leds FLASH_ITERATIONS times at 1000/FLASH_INTERVAL
State Avanzar = State(AvanzarUpdate); //show the circular animation
State GiroDerecha = State(GiroDerechaUpdate); //show the circular animation
State GiroIzquierda = State(GiroIzquierdaUpdate); //show the circular animation
State Retroceder = State(RetrocederUpdate); //show the circular animation
State Victoria = State(VictoriaUpdate); //show the circular animation


FSM stateMachine = FSM(Pruebas); //initialize state machine, start in state: noop

/*
  atmega32blinkpin32- *modified blink sketch for atmega32L by hexskrew*
  Turns on an LED on for one second, then off for one second, repeatedly,   
  one by one for all 32 outputs. 
  This example code is in the public domain.
 */

void setup() {                
  // initialize the digital pin as an output. Los que se queman estan como INPUT.
  pinMode(31, INPUT);   //Entradas sensor consumo de motores.
  pinMode(30, INPUT);   //Entradas sensor consumo de motores.
  pinMode(29, OUTPUT);  // Totem salida DER del 2
  pinMode(28, OUTPUT);  //Habilitacion puente H 2
  pinMode(27, OUTPUT);  // Totem salida IZQ del 2
  pinMode(26, OUTPUT);  // Totem salida DER del 1
  pinMode(25, OUTPUT);  //Habilitacion puente H 1
  pinMode(24, OUTPUT);  // Totem salida IZQ del 1
  pinMode(23, INPUT);   //Entradas de switch
  pinMode(22, INPUT);   //Entradas de switch
  pinMode(21, INPUT);   //Entradas de switch
  pinMode(20, INPUT);   //Entradas de switch
  pinMode(19, INPUT);   //Entradas de switch
  pinMode(18, INPUT);   //Entradas de switch
  pinMode(17, INPUT);   //Entradas de switch
  pinMode(16, INPUT);   //Entradas de switch
  pinMode(15, OUTPUT);  //SALIDA PWM
  pinMode(14, INPUT);   //Entrada trigger
  pinMode(13, INPUT);   //OPTO
  pinMode(12, INPUT);   //OPTO
  pinMode(11, INPUT);   //OPTO
  pinMode(10, INPUT);   //OPTO
  pinMode(9, OUTPUT);   //Tx
  pinMode(8, OUTPUT);   //Rx
  pinMode(7, OUTPUT);  
  pinMode(6, OUTPUT);  
  pinMode(5, OUTPUT);  
  pinMode(4, OUTPUT);   //OUT 4
  pinMode(3, OUTPUT);   //OUT PWM 0
  pinMode(2, OUTPUT);   //OUT 3
  pinMode(1, OUTPUT);   //OUT 2
  pinMode(0, OUTPUT);   //OUT 1
}

  uint32_t tiempo_ms=0;

void loop() {
 // uint32_t tiempo=200;
  uint32_t static Accion=0;
  
/*    manipulate the state machine by external input and control
  */
  //CONTROL THE STATE
    switch (Accion){
      case 0: //stateMachine.transitionTo(Pruebas); 
      break;
      case 1: //stateMachine.transitionTo(Espera); 
      break; //first press
      case 2: //stateMachine.transitionTo(SacarPalas); 
      break; //second press
//State Pruebas = State(PruebasUpdate);  //no operation
//State Espera = State(fadeEnter, fadeUpdate, NULL);  //this state fades the LEDs in
//State SacarPalas = State(SacarPalasUpdate);  //this state flashes the leds FLASH_ITERATIONS times at 1000/FLASH_INTERVAL
//State Avanzar = State(AvanzarUpdate); //show the circular animation
//State GiroDerecha = State(GiroDerechaUpdate); //show the circular animation
//State GiroIzquierda = State(GiroIzquierdaUpdate); //show the circular animation
//State Retroceder = State(RetrocederUpdate); //show the circular animation
//State Victoria = State(VictoriaUpdate); //show the circular animation
    }

  //THIS LINE IS CRITICAL
  //do not remove the stateMachine.update() call, it is what makes this program 'tick'
  stateMachine.update();

}


/*
  ALL the functions below are helper functions for the states of the program
*/
///[noop state:update] the state machine is in a state that does nothing
void PruebasUpdate() {
    DESHABILITACION_DERECHA;
    DESHABILITACION_IZQUIERDA;
    digitalWrite(SALIDA_1, OPTO_DI);   // set the LED on
    digitalWrite(SALIDA_2, OPTO_DD);
    digitalWrite(SALIDA_3, OPTO_TI);
    digitalWrite(SALIDA_4, OPTO_TD);
    if ( 0 == PULSADOR_DERECHO ) stateMachine.transitionTo(Espera);
  //this function gets called as long as the user have not pressed any buttons after startup
}
///[fade state:enter] the statemachine is just told to enter the fade state, we need to 
void EsperaEnter() {
  tiempo_ms = millis();
//  uint32_t endMillis = startMillis + FADE_DURATION;
  }

///[fade state:update] we need to keep updating the tlc in order to see the effects
void EsperaUpdate() {
   if ( tiempo_ms + 5000 > millis() ) stateMachine.transitionTo(SacarPalas);

}


///[flash state:update] this state blocks loop until done and does an immediateTransition to circle state
void SacarPalasUpdate() {
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ADELANTE;
  MOTOR_DERECHO_ADELANTE;
  delay(300);
  MOTOR_IZQUIERDO_ATRAS;
  MOTOR_DERECHO_ATRAS;
  delay(300);
  DESHABILITACION_DERECHA;
  DESHABILITACION_IZQUIERDA;
  stateMachine.transitionTo(Avanzar);
}

///helper for flash state, set all LEDs either fully off or fully on
void setAll(boolean state) {
}

///[circle state:update] animate the circle pattern
void AvanzarUpdate() {
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ADELANTE;
  MOTOR_DERECHO_ADELANTE;
  digitalWrite(SALIDA_1, LOW);
  if (0 != OPTO_DI) stateMachine.transitionTo(Retroceder);
  if (0 != OPTO_DD) stateMachine.transitionTo(GiroIzquierda);
  
}

void VictoriaUpdate() {
  DESHABILITACION_DERECHA;
  DESHABILITACION_IZQUIERDA;
}

void RetrocederUpdate() {
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ATRAS;
  MOTOR_DERECHO_ATRAS;
  digitalWrite(SALIDA_2, LOW);
  if (0 != OPTO_DI) stateMachine.transitionTo(Retroceder);
  if (0 != OPTO_DD) stateMachine.transitionTo(GiroIzquierda);
  
}
void GiroIzquierdaUpdate() {
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ATRAS;
  MOTOR_DERECHO_ADELANTE;
    digitalWrite(SALIDA_3, LOW);
  if (0 != OPTO_DI) stateMachine.transitionTo(Retroceder);
  if (0 != OPTO_DD) stateMachine.transitionTo(GiroIzquierda);
  
}
void GiroDerechaUpdate() {
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ADELANTE;
  MOTOR_DERECHO_ATRAS;
  digitalWrite(SALIDA_4, LOW);
  if (0 != OPTO_DI) stateMachine.transitionTo(Retroceder);
  if (0 != OPTO_DD) stateMachine.transitionTo(GiroIzquierda);
  
}

  
//  do{
//    digitalWrite(SALIDA_1, OPTO_DI);
//    digitalWrite(SALIDA_2, OPTO_DD);
//    digitalWrite(SALIDA_3, OPTO_TI);
//    digitalWrite(SALIDA_4, OPTO_TD);
//    
////    digitalWrite(SALIDA_1, PULSADOR_DELANTERO);
////    digitalWrite(SALIDA_2, PULSADOR_TRASERO);
////    digitalWrite(SALIDA_1, PULSADOR_IZQUIERDO);
////    digitalWrite(SALIDA_2, PULSADOR_DERECHO);
//
//    if(OPTO_DI==HIGH){
//      HABILITACION_DERECHA;
//      HABILITACION_IZQUIERDA;
//    }
//    
//
//    
//    MOTOR_DERECHO_ADELANTE;
//    delay(1000);
//    MOTOR_DERECHO_ATRAS;
//    delay(1000);
//    
//    MOTOR_IZQUIERDO_ADELANTE;
//    delay(1000);
//    MOTOR_IZQUIERDO_ATRAS;
//    delay(1000);
//  }while(1);
//  
//}
