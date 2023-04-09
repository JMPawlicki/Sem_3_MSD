load obiekt;

theta4=6.895;
k4=2.1516;
T4=15.80;
t4=0:59;

modelA4=tf([0 k4], [T4 1]); %transmitancja
set(modelA4, 'outputDelay', theta4); %opóźnienie modelu o theta
yModel4=step(modelA4,t4); %odpowiedź modelu na skok jednostkowy w czasie t
plot(t4,y,t4,yModel4);
grid on;

e4=y-yModel4; %wektor błędów
RMS=sum(e4.^2)/length(e4); %znormalizowany błąd średniokwadratowy
RMS;