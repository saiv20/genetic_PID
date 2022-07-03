# genetic_PID

Special mention to Prof Steve Brunton for his YouTube [series](https://www.youtube.com/watch?v=S5C_z1nVaSg) on tuning a PID Controller using Genetic Algorithm. It helped me to extend it to tune a PID Controller for a DC Motor.

The code is majorly divided into two parts: GAPID1.m and pidtest.m

GAPID1.m defines the parameters for the transfer function of the DC Motor and also initalizes the Genetic Algorithm parameters. 

pidtest.m produces the step response and the cost function of the parameters used by GAPID1.m .

To make modifications to the transfer function or Genetic Algorithm parameters, edit GAPID1.m . 
