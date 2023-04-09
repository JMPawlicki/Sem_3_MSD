load obiekt;

k4=2.155;
T4=16.20;
t4=0:59;

modelA4=tf([0 k4], [T4^4 4*T4^3 6*T4^2 4*T4 1]); %transmitancja
yModel4=step(modelA4,t4); %odpowiedź modelu na skok jednostkowy w czasie t
plot(t4,y,t4,yModel4);
grid on;

e4=y-yModel4; %wektor błędów
RMS=sum(e4.^2)/length(e4); %znormalizowany błąd średniokwadratowy
RMS;