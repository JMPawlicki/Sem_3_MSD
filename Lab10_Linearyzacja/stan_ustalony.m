clear;
X0=[0.04;303];         %– wektor stanu (w stanie ustalonym)
U0=[0.4;0.4;293;7000]; %– wektor wejœæ [wi,w,Ti,Q]
Y0=[0.04;303];         %– wektor wyjœæ (chcemy aby objêtoœæ cieczy w zbiorniku
                       % by³a sta³a i wynosi³a 0.04 m3 oraz aby temperatura
                       % wyjœciowa wynosi³a 303 K
IX=[];      % – wartoœci stanu nie s¹ blokowane
IU=[1;2;3]; % – pierwsza (wi), druga (w) i trzecia zmienna 
            % wejœciowa (Ti) jest zablokowana
IY=[1;2];   % – pierwsza (V=0.04) i druga (T=303) zmienna 
            % wyjœciowa jest zablokowana
V0=0.04;
T0=293;            
[x,u,y,dx]=trim('zbiornik_sys',X0,U0,Y0,IX,IU,IY);

nieliniowy(u(4)) %- wyœwietlenie wykresu