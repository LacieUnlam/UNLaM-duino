//#include <FiniteStateMachine.h>

//#define OPTO_DI digitalRead(10) //Opto de linea Delantero Izq Generico
//#define OPTO_DD digitalRead(11) //Opto de linea Delantero Der Generico
//#define OPTO_TI digitalRead(12) //Opto de linea Trasero Izq Generico
//#define OPTO_TD digitalRead(13) //Opto de linea Trasero Der Generico

#define OPTO_DI digitalRead(12) //Conf placa Robot Labo
#define OPTO_DD digitalRead(13) //Conf placa Robot Labo
#define OPTO_TI digitalRead(10) //Conf placa Robot Labo
#define OPTO_TD digitalRead(11) //Conf placa Robot Labo


#define SALIDA_1 0             //LED 1
#define SALIDA_2 1             //LED 2
#define SALIDA_3 2             //LED 3
#define SALIDA_4 4             //LED 4

// Definicion de tiempos.
#define T_GIR_DER 800    
#define T_GIR_IZQ 800
#define T_ATRAS   1500
#define T_AV      4000


// Pulsadores, entradas de contactos
//Definir segun robot

#define PULSADOR_DELANTERO  digitalRead(16)
#define PULSADOR_TRASERO    digitalRead(18)
#define PULSADOR_IZQUIERDO  digitalRead(20)
#define PULSADOR_DERECHO    digitalRead(22)

// Lectura de ADC, verificar en el robot de cada uno.

#define CONSUMO_DERECHO     analogRead(30)
#define CONSUMO_IZQUIERDO   analogRead(31)

// Manejo de motores.

#define HABILITACION_MOTORES    HABILITACION_DERECHA; HABILITACION_IZQUIERDA
#define HABILITACION_DERECHA    digitalWrite(25, HIGH)
#define HABILITACION_IZQUIERDA  digitalWrite(28, HIGH)

#define DESHABILITACION_DERECHA     digitalWrite(25, LOW)
#define DESHABILITACION_IZQUIERDA   digitalWrite(28, LOW)


#define MOTOR_IZQUIERDO_ATRAS       digitalWrite(27, LOW); digitalWrite(29, HIGH)
#define MOTOR_IZQUIERDO_ADELANTE    digitalWrite(27, HIGH); digitalWrite(29, LOW)
#define MOTOR_DERECHO_ATRAS         digitalWrite(24, LOW); digitalWrite(26, HIGH)
#define MOTOR_DERECHO_ADELANTE      digitalWrite(24, HIGH); digitalWrite(26, LOW)


#include <FiniteStateMachine.h>

// Maq completa de prueba.

/*******************************************************************************
 Solución al problema de "was not declared in this scope" in Arduino 1.6.X
*******************************************************************************/
void dummy(){};
State dummyState = State(dummy);

State Pruebas       = State(PruebasUpdate);
State Espera        = State(EsperaEnter, EsperaUpdate, NULL);
State SacarPalas    = State(SacarPalasUpdate);
State Avanzar       = State(AvanzarEntrada, AvanzarUpdate, NULL);
State GiroDerecha   = State(GiroDerechaEntrada, GiroDerechaUpdate, NULL);
State GiroIzquierda = State(GiroIzquierdaEntrada, GiroIzquierdaUpdate, NULL);
State Retroceder    = State(RetrocederEntrada, RetrocederUpdate, NULL);
State Victoria      = State(VictoriaUpdate);


FSM stateMachine = FSM(Pruebas); // Inicializacion de Maq


void setup() {                
  // Inicializacion de todos los pines **************** NO TOCAR ***********
  pinMode(31, INPUT);   //Entradas sensor consumo de motores.
  pinMode(30, INPUT);   //Entradas sensor consumo de motores.
  pinMode(29, OUTPUT);  // Totem salida DER del 2
  pinMode(28, OUTPUT);  //Habilitacion puente H 2
  pinMode(27, OUTPUT);  // Totem salida IZQ del 2
  pinMode(26, OUTPUT);  // Totem salida DER del 1
  pinMode(25, OUTPUT);  //Habilitacion puente H 1
  pinMode(24, OUTPUT);  // Totem salida IZQ del 1
  pinMode(23, INPUT);   //Entradas de switch 4
  pinMode(22, INPUT);   //Entradas de switch
  pinMode(21, INPUT);   //Entradas de switch 3
  pinMode(20, INPUT);   //Entradas de switch
  pinMode(19, INPUT);   //Entradas de switch 2
  pinMode(18, INPUT);   //Entradas de switch 
  pinMode(17, INPUT);   //Entradas de switch 1
  pinMode(16, INPUT);   //Entradas de switch
  pinMode(15, OUTPUT);  //SALIDA PWM
  pinMode(14, INPUT);   //Entrada trigger
  pinMode(13, INPUT);   //OPTO
  pinMode(12, INPUT);   //OPTO
  pinMode(11, INPUT);   //OPTO
  pinMode(10, INPUT);   //OPTO
  pinMode(9, OUTPUT);   //Tx
  pinMode(8,  INPUT);   //Rx
  pinMode(7, OUTPUT);   // SCK  --> Programador ICP
  pinMode(6, OUTPUT);   // MISO --> Programador ICP
  pinMode(5, OUTPUT);   // MOSI --> Programador ICP
  pinMode(4, OUTPUT);   //OUT 4 -- LED4
  pinMode(3, OUTPUT);   //OUT PWM 0
  pinMode(2, OUTPUT);   //OUT 3 -- LED3
  pinMode(1, OUTPUT);   //OUT 2 -- LED2
  pinMode(0, OUTPUT);   //OUT 1 -- LED1
  Serial.begin(9600); 
}

//  uint32_t static tiempo_ms=0; //  Control de tiempos
uint16_t titila;
uint16_t titila_enclavamiento;
uint16_t titila_anterior;

void loop() {
  
  //THIS LINE IS CRITICAL
  //do not remove the stateMachine.update() call, it is what makes this program 'tick'
  stateMachine.update();

}

// Que hace en este estado.
void PruebasUpdate() {
    DESHABILITACION_DERECHA;
    DESHABILITACION_IZQUIERDA;
    digitalWrite(SALIDA_1, OPTO_DI);   // set the LED on
    digitalWrite(SALIDA_2, OPTO_DD);
    digitalWrite(SALIDA_3, PULSADOR_DERECHO);//OPTO_TI);
    digitalWrite(SALIDA_4, OPTO_TD);
    if ( 0 == PULSADOR_DERECHO ) stateMachine.transitionTo(Espera);
}

// Como inicializa el estado.
void EsperaEnter() {
  Serial.print("Esperando...");
  digitalWrite(SALIDA_4, !digitalRead(SALIDA_4));
  }

// Que hace en este estado.
void EsperaUpdate() {
  titila_enclavamiento= (stateMachine.timeInCurrentState()/100);
  if (titila_enclavamiento != titila_anterior) {
    titila_anterior= titila_enclavamiento;
    if ((titila_enclavamiento%5) == 0 ) digitalWrite(SALIDA_4, !digitalRead(SALIDA_4));
  };
  if ( 5000 < stateMachine.timeInCurrentState() ) stateMachine.transitionTo(SacarPalas);
}


// Que hace en este estado.
void SacarPalasUpdate() {
  digitalWrite(SALIDA_1, LOW);   // Indico en que estado estoy.
  digitalWrite(SALIDA_2, HIGH);
  digitalWrite(SALIDA_3, HIGH);
  digitalWrite(SALIDA_4, LOW);
  Serial.print("Sacando Palas\n");
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ADELANTE;
  MOTOR_DERECHO_ADELANTE;
  delay(300);
  DESHABILITACION_DERECHA;
  DESHABILITACION_IZQUIERDA;
  stateMachine.transitionTo(Avanzar);
}


// Como inicializa el estado.
void AvanzarEntrada() {
  digitalWrite(SALIDA_1, LOW);   // Indico en que estado estoy.
  digitalWrite(SALIDA_2, HIGH);
  digitalWrite(SALIDA_3, HIGH);
  digitalWrite(SALIDA_4, HIGH);
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ADELANTE;
  MOTOR_DERECHO_ADELANTE;
  
  Serial.print("Avanzando..."+ stateMachine.timeInCurrentState());

}

// Que hace en este estado.
void AvanzarUpdate() {
  if ( T_AV < stateMachine.timeInCurrentState() ) stateMachine.transitionTo(GiroIzquierda);
  if (0 == OPTO_DI) stateMachine.transitionTo(Retroceder);
  if (0 == OPTO_DD) stateMachine.transitionTo(GiroIzquierda);
}

// Que hace en este estado.
void VictoriaUpdate() {
  DESHABILITACION_DERECHA;
  DESHABILITACION_IZQUIERDA;
}

// Como inicializa el estado.
void RetrocederEntrada() {
  digitalWrite(SALIDA_1, HIGH);     // Indico en que estado estoy.
  digitalWrite(SALIDA_2, HIGH);
  digitalWrite(SALIDA_3, HIGH);
  digitalWrite(SALIDA_4, LOW);
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ATRAS;
  MOTOR_DERECHO_ATRAS;
}


// Que hace en este estado.
void RetrocederUpdate() {
   if ( T_ATRAS < stateMachine.timeInCurrentState() ) stateMachine.transitionTo(GiroDerecha);
}

// Como inicializa el estado.
void GiroIzquierdaEntrada() {
  digitalWrite(SALIDA_1, HIGH);   // Indico en que estado estoy.
  digitalWrite(SALIDA_2, LOW);
  digitalWrite(SALIDA_3, HIGH);
  digitalWrite(SALIDA_4, HIGH);
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ATRAS;
  MOTOR_DERECHO_ADELANTE;
}

// Que hace en este estado.
void GiroIzquierdaUpdate() {
   if ( T_GIR_IZQ < stateMachine.timeInCurrentState() ) stateMachine.transitionTo(Avanzar);
  if (0 == OPTO_DI) stateMachine.transitionTo(Retroceder);
}



// Como inicializa el estado.
void GiroDerechaEntrada() {
  digitalWrite(SALIDA_1, HIGH);    // Indico en que estado estoy.
  digitalWrite(SALIDA_2, HIGH);
  digitalWrite(SALIDA_3, LOW);
  digitalWrite(SALIDA_4, HIGH);
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ADELANTE;
  MOTOR_DERECHO_ATRAS;
}

// Que hace en este estado.
void GiroDerechaUpdate() {
  //if ( tiempo_ms + T_GIR_IZQ < millis() ) stateMachine.transitionTo(Avanzar);
  if ( T_GIR_IZQ < stateMachine.timeInCurrentState() ) stateMachine.transitionTo(Avanzar);

}

  

