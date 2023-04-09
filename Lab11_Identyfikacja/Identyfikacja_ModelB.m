% Dla modelu B

function blad = Identyfikacja_ModelB(X0)
load obiekt.mat;
k=X0(1);
T1=X0(2);
T2=X0(3);
O=X0(4);

wspol=conv([T1,1],[T2,1]);
modelB=tf([0, k], [wspol(1),wspol(2),wspol(3)]);

set(modelB,'outputdelay', O);

czas=0:59;
y_model = step(modelB, czas);

e=y-y_model;
blad = sum(e.^2)/length(e);
end

% Wkleić do Command Window
% [parametry, blad] = fminsearch('Identyfikacja_ModelB',[2,25.5,(25.5/4),7])