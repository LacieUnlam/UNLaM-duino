/*
******************************************************************  
**
**  Programa de testeo del shield Puente H MDBT
**  
******************************************************************  
*/

#include "MotorDriver.h"

MotorDriver motor;

void setup()
{
    // initialize
    motor.begin();
}

void loop()
{
    for(int i = 1; i <= 10; i++)
    {
      motor.speed(MOTORA, 10 * i);         // MotorA a 10 * i [%]
      motor.speed(MOTORB, 10 * i);         // MotorB a 10 * i [%]
      delay(1000);
      motor.brake(MOTORA);                      // brake
      motor.brake(MOTORB);                      // brake
      delay(1000);
      motor.speed(MOTORA, -10 * i);         // MotorA a 10 * i [%]
      motor.speed(MOTORB, -10 * i);         // MotorB a 10 * i [%]
      delay(1000);
      motor.brake(MOTORA);                      // brake
      motor.brake(MOTORB);                      // brake
      delay(1000);
    }
}

