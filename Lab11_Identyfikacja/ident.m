function blad = ident(X0)
load obiekt.mat
k=X0(1);
T=X0(2);
O=X0(3);

modelA=tf([0, k], [T, 1]);

set(modelA,'outputdelay', O);

czas=0:59;
y_model = step(modelA, czas);

e=y-y_model;
blad = sum(e.^2)/length(e);
end