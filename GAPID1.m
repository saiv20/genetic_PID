clear all, close all, clc

dt = 0.001;
PopSize = 25;
MaxGenerations = 10;

J = 0.01; % moment of inertia of the rotor
b = 0.1; % motor viscous friction constant
Kt = 0.01; 
R = 1; % electric resistance
L = 0.5; % electric inductance

s = tf('s');
G = Kt/((J*s+b)*(L*s+R)+Kt^2)

options = optimoptions(@ga,'PopulationSize',PopSize,'MaxGenerations',MaxGenerations,'OutputFcn',@myfun);
[x,fval] = ga(@(K)pidtest(G,dt,K),3,-eye(3),zeros(3,1),[],[],[],[],[],options);