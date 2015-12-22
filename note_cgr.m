[x,y]=note(100,1/8)  %frekans ve vurus deðeri girildi.
plot(y,x)           %sinüs sinyali çizdirdim.

zz1=[linspace(0,1.5,8192*(1/8)*(2/8)),linspace(1.5,1,8192*(1/8)*(1/8)),linspace(1,1,8192*(1/8)*(4/8)),linspace(1,0,8192*(1/8)*(1/8))]  %zz1'de zarfýn pozitif kýsmýný çizdirdiö
                                                                                                                                       %baþlangýç deðeri,bitiþ deðeri,Fs*vurus*t degisimi formülüyele zarfýn zz1'de pozitif kýsmýný çizdirdim.
   plot(y,zz1)
    
zz2=[linspace(0,-1.5,8192*(1/8)*(2/8)),linspace(-1.5,-1,8192*(1/8)*(1/8)),linspace(-1,-1,8192*(1/8)*(4/8)),linspace(-1,0,8192*(1/8)*(1/8))]  %zz2'de zarfýn pozitif kýsmýný çizdirdiö
                                                                                                                                            %baþlangýç deðeri,bitiþ deðeri,Fs*vurus*t degisimi formülüyele zarfýn zz2'de negatif kýsmýný çizdirdim.
plot(y,zz2)

zz=zz1.*zz2 %zz1*zz2'deki tüm elemanlarý tek tek çarptým ve z3'atadým.

z3=x.*zz  %x'teki her bir elemaný zz3 ile çarptým ve carp'a atadým.
plot(y,z3) %y'ye göre carp çizdirdim.