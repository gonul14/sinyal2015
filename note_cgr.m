[x,y]=note(100,1/8)  %frekans ve vurus de�eri girildi.
plot(y,x)           %sin�s sinyali �izdirdim.

zz1=[linspace(0,1.5,8192*(1/8)*(2/8)),linspace(1.5,1,8192*(1/8)*(1/8)),linspace(1,1,8192*(1/8)*(4/8)),linspace(1,0,8192*(1/8)*(1/8))]  %zz1'de zarf�n pozitif k�sm�n� �izdirdi�
                                                                                                                                       %ba�lang�� de�eri,biti� de�eri,Fs*vurus*t degisimi form�l�yele zarf�n zz1'de pozitif k�sm�n� �izdirdim.
   plot(y,zz1)
    
zz2=[linspace(0,-1.5,8192*(1/8)*(2/8)),linspace(-1.5,-1,8192*(1/8)*(1/8)),linspace(-1,-1,8192*(1/8)*(4/8)),linspace(-1,0,8192*(1/8)*(1/8))]  %zz2'de zarf�n pozitif k�sm�n� �izdirdi�
                                                                                                                                            %ba�lang�� de�eri,biti� de�eri,Fs*vurus*t degisimi form�l�yele zarf�n zz2'de negatif k�sm�n� �izdirdim.
plot(y,zz2)

zz=zz1.*zz2 %zz1*zz2'deki t�m elemanlar� tek tek �arpt�m ve z3'atad�m.

z3=x.*zz  %x'teki her bir eleman� zz3 ile �arpt�m ve carp'a atad�m.
plot(y,z3) %y'ye g�re carp �izdirdim.