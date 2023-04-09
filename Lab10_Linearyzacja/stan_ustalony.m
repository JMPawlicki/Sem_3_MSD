clear;
X0=[0.04;303];         %� wektor stanu (w stanie ustalonym)
U0=[0.4;0.4;293;7000]; %� wektor wej�� [wi,w,Ti,Q]
Y0=[0.04;303];         %� wektor wyj�� (chcemy aby obj�to�� cieczy w zbiorniku
                       % by�a sta�a i wynosi�a 0.04 m3 oraz aby temperatura
                       % wyj�ciowa wynosi�a 303 K
IX=[];      % � warto�ci stanu nie s� blokowane
IU=[1;2;3]; % � pierwsza (wi), druga (w) i trzecia zmienna 
            % wej�ciowa (Ti) jest zablokowana
IY=[1;2];   % � pierwsza (V=0.04) i druga (T=303) zmienna 
            % wyj�ciowa jest zablokowana
V0=0.04;
T0=293;            
[x,u,y,dx]=trim('zbiornik_sys',X0,U0,Y0,IX,IU,IY);

nieliniowy(u(4)) %- wy�wietlenie wykresu