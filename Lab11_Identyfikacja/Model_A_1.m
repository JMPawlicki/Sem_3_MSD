load obiekt;

theta1=7.15;
k1=2.125;
T1=15.05;
t1=0:59;

modelA1=tf([0 k1], [T1 1]); %transmitancja
set(modelA1, 'outputDelay', theta1); %opóźnienie modelu o theta
yModel1=step(modelA1,t1); %odpowiedź modelu na skok jednostkowy w czasie t
plot(t1,y,t1,yModel1);
grid on;

e1=y-yModel1; %wektor błędów
RMS=sum(e1.^2)/length(e1); %znormalizowany błąd średniokwadratowy
RMS;