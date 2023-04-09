function nieliniowy(Q) %podajemy moc grza³ki jako wejœcie
V0=0.04;
T0=293;
w=0.4;
wi=0.4;
Ti=293;
[t,x] = ode45(@zbiornik_stan,[0:1:600],[V0,T0],[],wi,w,Ti,Q);
subplot(2,2,1)
    plot(t,x(:,1))
    grid on;
    axis([0 600 0 max(x(:,1))*2])
    title('Objêtoœæ [m3]')
subplot(2,2,2)
    A=zeros(1,length(t));
    for a=1:length(t)
        A(a)=Q;
    end
    plot(t,A)
    grid on;
    title('Moc grza³ki [W]')
subplot(2,2,[3,4])
    plot(t,x(:,2))
    grid on;
    title('Temperatura [K]')
end

