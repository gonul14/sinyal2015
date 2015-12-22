[x,y]=note(100,1/8)  %frekans ve vurus değeri girildi.
plot(y,x)           %sinüs sinyali çizdirdim.

zz1=[linspace(0,1.5,8192*(1/8)*(2/8)),linspace(1.5,1,8192*(1/8)*(1/8)),linspace(1,1,8192*(1/8)*(4/8)),linspace(1,0,8192*(1/8)*(1/8))]  %zz1'de zarfın pozitif kısmını çizdirir
                                                                                                                                       %başlangıç değeri,bitiş değeri,Fs*vurus*t degisimi formülüyele zarfın zz1'de pozitif kısmını çizdirdim.
   plot(y,zz1)
    
zz2=[linspace(0,-1.5,8192*(1/8)*(2/8)),linspace(-1.5,-1,8192*(1/8)*(1/8)),linspace(-1,-1,8192*(1/8)*(4/8)),linspace(-1,0,8192*(1/8)*(1/8))]  %zz2'de zarfın pozitif kısmını çizdirir
                                                                                                                                            %başlangıç değeri,bitiş değeri,Fs*vurus*t degisimi formülüyele zarfın zz2'de negatif kısmını çizdirdim.
plot(y,zz2)

zz=zz1.*zz2 %zz1*zz2'deki tüm elemanları tek tek çarptım ve z3'atadım.

z3=x.*zz  %x'teki her bir elemanı zz3 ile çarptım ve carp'a atadım.
plot(y,z3) %y'ye göre carp çizdirdim.
