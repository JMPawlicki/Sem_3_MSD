load obiekt;

theta1=7;
k1=2;
T1=25.5;
T2=25.5/4;
t1=0:59;

modelB4=tf([0 0 k1], [T1*T2 T1+T2 1]); %transmitancja
set(modelB4, 'outputDelay', theta1); %opóźnienie modelu o theta
yModel1=step(modelB4,t1); %odpowiedź modelu na skok jednostkowy w czasie t
plot(t1,y,t1,yModel1);
grid on;

e1=y-yModel1; %wektor błędów
RMS=sum(e1.^2)/length(e1); %znormalizowany błąd średniokwadratowy
RMS;