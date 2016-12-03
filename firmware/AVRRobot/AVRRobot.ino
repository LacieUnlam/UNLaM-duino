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

#define HABILITACION_MOTORES     HABILITACION_DERECHA; HABILITACION_IZQUIERDA
#define MOTOR_DERECHO            25
#define MOTOR_IZQUIERDO          28

#define HABILITACION_DERECHA        digitalWrite(MOTOR_DERECHO, HIGH)
#define HABILITACION_IZQUIERDA      digitalWrite(MOTOR_IZQUIERDO, HIGH)

#define DESHABILITACION_DERECHA     digitalWrite(MOTOR_DERECHO, LOW)
#define DESHABILITACION_IZQUIERDA   digitalWrite(MOTOR_IZQUIERDO, LOW)


#define MOTOR_IZQUIERDO_ATRAS       digitalWrite(MOTOR_IZQUIERDO -1, LOW);   digitalWrite(MOTOR_IZQUIERDO +1, HIGH)
#define MOTOR_IZQUIERDO_ADELANTE    digitalWrite(MOTOR_IZQUIERDO -1, HIGH);  digitalWrite(MOTOR_IZQUIERDO +1, LOW)
#define MOTOR_DERECHO_ATRAS         digitalWrite(MOTOR_DERECHO -1,   LOW);   digitalWrite(MOTOR_DERECHO +1,   HIGH)
#define MOTOR_DERECHO_ADELANTE      digitalWrite(MOTOR_DERECHO -1,   HIGH);  digitalWrite(MOTOR_DERECHO +1,   LOW)


#include <FiniteStateMachine.h>

// Maq completa de prueba.

/*******************************************************************************
 Solución al problema de "was not declared in this scope" in Arduino 1.6.X
*******************************************************************************/
void descarte(){};
State estadoDescartar = State(descarte);

State Pruebas       = State(PruebasProceso);
State Espera        = State(EsperaEntrada, EsperaProceso, NULL);
State SacarPalas    = State(SacarPalasProceso);
State Avanzar       = State(AvanzarEntrada, AvanzarProceso, NULL);
State GiroDerecha   = State(GiroDerechaEntrada, GiroDerechaProceso, NULL);
State GiroIzquierda = State(GiroIzquierdaEntrada, GiroIzquierdaProceso, NULL);
State Retroceder    = State(RetrocederEntrada, RetrocederProceso, NULL);
State Victoria      = State(VictoriaProceso);


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

uint32_t static tiempo_ms=0; //  Control de tiempos
uint16_t  titila;
uint16_t  titila_enclavamiento;
uint16_t  bloqueo;
uint16_t  titila_anterior;
uint8_t   titila_periodo;
uint8_t   titila_brillo;
int8_t    titila_sentido;     //aumenta o disminuye
uint8_t   vel_IZQ;              // Colocar Nro de 0 a 100
uint8_t   vel_DER;              // Colocar Nro de 0 a 100


void loop() {
  
  //THIS LINE IS CRITICAL
  //do not remove the stateMachine.update() call, it is what makes this program 'tick'
  stateMachine.update();
/*
  if ((millis()%100)<vel_IZQ) HABILITACION_IZQUIERDA; else DESHABILITACION_IZQUIERDA;
  if ((millis()%100)<vel_DER) HABILITACION_DERECHA;   else DESHABILITACION_DERECHA;
*/

}

// Que hace en este estado.
void PruebasProceso() {
    DESHABILITACION_DERECHA;
    DESHABILITACION_IZQUIERDA;
    digitalWrite(SALIDA_1, OPTO_DI);   // set the LED on
    digitalWrite(SALIDA_2, OPTO_DD);
    digitalWrite(SALIDA_3, PULSADOR_DERECHO);//OPTO_TI);
    digitalWrite(SALIDA_4, OPTO_TD);
    if ( 0 == PULSADOR_DERECHO ) stateMachine.transitionTo(Espera);
    if ( 0 == PULSADOR_IZQUIERDO ) stateMachine.transitionTo(Victoria);
     // digitalWrite(SALIDA_1, HIGH);   // set the LED on
}

// Como inicializa el estado.
void EsperaEntrada() {
  digitalWrite(SALIDA_4, HIGH);  //Apago todos los LEDs
  digitalWrite(SALIDA_3, HIGH);
  digitalWrite(SALIDA_1, HIGH);
  digitalWrite(SALIDA_2, HIGH);
  Serial.print("Esperando...");
  digitalWrite(SALIDA_1, LOW);   // Enciendo en orden.
  delay(300);
  digitalWrite(SALIDA_1, HIGH);
  digitalWrite(SALIDA_2, LOW);
  delay(300);
  digitalWrite(SALIDA_2, HIGH);
  digitalWrite(SALIDA_3, LOW);
  delay(300);
  digitalWrite(SALIDA_3, HIGH);
  digitalWrite(SALIDA_4, LOW);
  delay(300);
  digitalWrite(SALIDA_4, HIGH);
  }

// Que hace en este estado.
void EsperaProceso() {
  if (((stateMachine.timeInCurrentState()%400) > 300) ){
    if(bloqueo==0) digitalWrite(SALIDA_2, !digitalRead(SALIDA_2));
    bloqueo=1;
  } else bloqueo=0;
  if ( 5000 < stateMachine.timeInCurrentState()) stateMachine.transitionTo(SacarPalas);
}


// Que hace en este estado.
void SacarPalasProceso() {
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
void AvanzarProceso() {
  if ( T_AV < stateMachine.timeInCurrentState() ) stateMachine.transitionTo(GiroIzquierda);
  if (0 == OPTO_DI) stateMachine.transitionTo(Retroceder);
  if (0 == OPTO_DD) stateMachine.transitionTo(GiroIzquierda);
//  Serial.print("Consumos"+analogRead(31)+";"+analogRead(30));  //ADC0 y ADC1
  
}

// Que hace en este estado.
void VictoriaProceso() {
  DESHABILITACION_DERECHA;
  DESHABILITACION_IZQUIERDA;
    if ((titila_enclavamiento%100)<(vel_IZQ)) digitalWrite(SALIDA_1, HIGH); else digitalWrite(SALIDA_1, LOW);
    titila_enclavamiento++;
    if (titila_enclavamiento>200) titila_enclavamiento=0;
    if ((millis()%50)==0){
    if (1==titila_anterior) {
      vel_IZQ++;
      if (vel_IZQ>=100)  titila_anterior=0;
    }
    if (0==titila_anterior) {
      vel_IZQ--;
      if (vel_IZQ<=10)  titila_anterior=1;
    }
    }
    if ((stateMachine.timeInCurrentState()%100)==0) {     // Cada cuanto t lo cambio
      if (titila_sentido>0) titila_sentido;
    }
}

// Como inicializa el estado.
void RetrocederEntrada() {
  digitalWrite(SALIDA_1, HIGH);      // Indico en que estado estoy.
  digitalWrite(SALIDA_2, HIGH);
  digitalWrite(SALIDA_3, HIGH);
  digitalWrite(SALIDA_4, LOW);
//  Serial.write(6+0);                 // Para mdulo con LEDs
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ATRAS;
  MOTOR_DERECHO_ATRAS;
}


// Que hace en este estado.
void RetrocederProceso() {
   if ( T_ATRAS < stateMachine.timeInCurrentState() ) stateMachine.transitionTo(GiroDerecha);
//  Serial.write(6+9);                 // Para mdulo con LEDs
}

// Como inicializa el estado.
void GiroIzquierdaEntrada() {
  digitalWrite(SALIDA_1, HIGH);   // Indico en que estado estoy.
  digitalWrite(SALIDA_2, LOW);
  digitalWrite(SALIDA_3, HIGH);
  digitalWrite(SALIDA_4, HIGH);
//  Serial.write(6+1);                 // Para mdulo con LEDs
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ATRAS;
  MOTOR_DERECHO_ADELANTE;
}

// Que hace en este estado.
void GiroIzquierdaProceso() {
   if ( T_GIR_IZQ < stateMachine.timeInCurrentState() ) stateMachine.transitionTo(Avanzar);
  if (0 == OPTO_DI) stateMachine.transitionTo(Retroceder);
}



// Como inicializa el estado.
void GiroDerechaEntrada() {
  digitalWrite(SALIDA_1, HIGH);    // Indico en que estado estoy.
  digitalWrite(SALIDA_2, HIGH);
  digitalWrite(SALIDA_3, LOW);
  digitalWrite(SALIDA_4, HIGH);
//  Serial.write(6+2);                 // Para mdulo con LEDs
  HABILITACION_MOTORES;
  MOTOR_IZQUIERDO_ADELANTE;
  MOTOR_DERECHO_ATRAS;
}

// Que hace en este estado.
void GiroDerechaProceso() {
  //if ( tiempo_ms + T_GIR_IZQ < millis() ) stateMachine.transitionTo(Avanzar);
  if ( T_GIR_IZQ < stateMachine.timeInCurrentState() ) stateMachine.transitionTo(Avanzar);

}

  
//Protocolo Placa Roboleds
//************************
//Se recibirá un byte, donde:
//Bit 0 a 3: Se definen 16 efectos posibles.
//Bit 4: Define dos velocidades para los efectos: Baja (0) y alta (1) .
//Bit 5: Azul. Si está a uno, se utilizan los leds de ese color.
//Bit 6: Verde. Si está a uno, se utilizan los leds de ese color.
//Bit 7: Rojo. Si está a uno, se utilizan los leds de ese color.

//Los 16 efectos posibles son afectados por los modificadores de color y los que realizan
//secuencia, por el modificador de velocidad:
//00: Estático. Todos los leds prendidos.
//01: Avance (shift de uno) izquierda.
//02: Retroceso (shift de uno) derecha.
//03: Avance (shift de dos) izquierda.
//04: Retroceso (shift de dos) derecha.
//05: Auto fantástico.
//06: Prende solo led 1.
//07: Prende solo led 2.
//08: Prende solo led 3.
//09: Prende solo led 4.
//10: Prende solo led 5.
//11: Prende solo led 6.
//12: Prenden solo leds 1-3.
//13: Prenden solo leds 4-6.
//14: Titilan alternados 1-3 y 4-6.
//15: Todos titilan.
