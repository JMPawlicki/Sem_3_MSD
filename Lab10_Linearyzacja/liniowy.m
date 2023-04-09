stan_ustalony;
%U0=[0.4;0.4;293;7000]; – wektor wejœæ [wi,w,Ti,Q]
%Q=u(4) - moc grza³ki ze stanu ustalonego
t=0:1:600;

[A,B,C,D] = linmod('zbiornik_sys', x, u);
    U=zeros(length(t),4); %poniewa¿ warunki w trakcie s¹ niezmienne
    x0=[V0-x(1),T0-x(2)]; %startowa odchy³ka od stanu ust.
[y_lin,t_lin] = lsim(A,B,C,D,U,t,x0);
y=y_lin(:,2)+303; %temperatura po linearyzacji

[t_nlin,y_nlin] = ode45(@zbiornik_stan,[0:1:600],[V0,T0],[],U0(1),U0(2),U0(3),u(4));
dif=y_nlin(:,2)-y; %ró¿nica odpowiedzi

subplot(2,2,1)
    plot(t,y)
    grid
    title('Temperatura w modelu zlinearyzowanym [K]')
subplot(2,2,2)
    plot(t,y_nlin(:,2))
    grid
    title('Temperatura w modelu nieliniowym')
subplot(2,2,[3,4])
    plot(t,dif)
    grid
    title('Ró¿nica odpowiedzi (nielinowy-zlinearyzowany) [K]')