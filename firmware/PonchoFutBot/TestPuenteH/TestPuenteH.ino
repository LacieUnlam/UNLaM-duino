#include<>

/*
*************************************************************
*
*  PROGRAMA DE TESTEO PUENTE H - UNLAMDUINO
*  
*  Inicio: 21/10/2017
*
*************************************************************
*/

#define ENABLED  -1
#define DISABLED  0
#define ON -1
#define OFF 0

#define STOPPED   0xF0
#define RUNNING   0xF1
#define FOWARD    0xF2
#define REVERSE   0xF3

#define MOTOR_1   1
#define MOTOR_2   2
#define MOTOR_ALL 3

#define HB_ENABLE_M1 9
#define HB_ENABLE_M2 10

#define HB_M1_1A 8
#define HB_M1_2A 11

#define HB_M2_3A 12
#define HB_M2_4A 13

// statMotors[0][] Motor 1 - 0-Status Motor, 1-Status Run, 2-Status Direction
// statMotors[1][] Motor 2 - 0-Status Motor, 1-Status Run, 2-Status Direction
int statMotors[2][3] = {
                        {DISABLED, STOPPED, FOWARD},
                        {DISABLED, STOPPED, FOWARD}
                       }  

void setup()
{
  initMDBT();
}

void loop()
{

  
}

int initMDBT()
{
  pinMode(HB_1A, OUTPUT);
  pinMode(HB_2A, OUTPUT);
  pinMode(HB_3A, OUTPUT);
  pinMode(HB_4A, OUTPUT);      
  pinMode(HB_ENABLE_M1, OUTPUT);      
  pinMode(HB_ENABLE_M2, OUTPUT);      
}

int enableMotor(int motor, int onOff)
{
  
}

void disableMotor(int motor, int onOff)
{
  if(motor == MOTOR_1)  
  {
    if(statMotors[0][1] != DISABLED)
      digitalWrite(HB_ENABLE_M1, LOW);  
    return;
  }
  else if(motor == MOTOR_2)
  {
    if(statMotors[0][1] != DISABLED)
      digitalWrite(HB_ENABLE_M2, LOW);
    return;
  }
  
  if(statMotors[0][1] != DISABLED)
    digitalWrite(HB_ENABLE_M1, LOW);
    
  if(statMotors[0][1] == DISABLED) 
    digitalWrite(HB_ENABLE_M2, LOW);
}

void Stop(int motor)
{
  if(motor == MOTOR_1)  
    digitalWrite(HB_ENABLE_M1, LOW);  
  else  digitalWrite(HB_ENABLE_M2, LOW);
}

void foward()
{
}

void reverse()
{
}


