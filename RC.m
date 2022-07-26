clc;
clear;

Fuente = 10;
Resistencia = 2*(10^3);
Capacitor = 3*(10^-6);

Vcapacitor = zeros;
tiempo(1) = 0;

for i = 1:50
    
    tiempo(i + 1) = tiempo(i) + 0.001;
    
    Vcapacitor(i + 1) = Fuente * ( 1 - exp( (-tiempo(i) )/(Capacitor*Resistencia) ));
end

plot(tiempo, Vcapacitor);
