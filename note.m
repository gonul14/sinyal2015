function [xh,t]=note(frekans,olcu)  %giri�inden frekans ve �l�� olarak arg�man alan note fonksiyonunu tan�mlad�.
Fs=8192; %�rnekleme frekans�n� belirledim.
t=0:1/Fs:olcu-1/Fs;  %0'dan ba�latt�m 1/Fs kadar artt�rd�m.�l�� de�erinden 1/Fs ��kard�m.
                     %E�er 1/fs �l�� de�erinden ��kar�lmazsa 1025 elemanl�
                     %oluyor x,boyut hatas� veriyor o y�zden 1/fs'yi ��kart�nca 1024 elemanl� olur.
                     
x=sin(2*pi*frekans*t); %sin�s sinyalini tan�mlad�m.
zarf=[linspace(0,1.5,length(t)*(2/8)),linspace(1.5,1,length(t)*(1/8)),linspace(1,1,length(t)*(4/8)),linspace(1,0,length(t)*(1/8))]; 
%0-1.5'e kadar length(t)*2/8 art�mla ,di�er t�m aral�klar i�inde ayn�
%i�lemler linspace ile yapt�m ve zarf'a koydum.
xz=x.*zarf; %Her bir t i�in hesaplanan x ile zarftaki elemanlar �arp�l�r.xz'ye atad�m.


x2=0.8*sin(2*pi*frekans*t*2); %1.harmonik i�in sin�s sinyali olu�turdum.
x3=0.4*sin(2*pi*frekans*t*3); %2.harmonik i�in sin�s sinyali olu�turdum.
x4=0.1*sin(2*pi*frekans*t*4); %3.harmonik i�in sin�s sinyali olu�turdum.
xh=x+x2+x3+x4;  %x sinyali ve 3 harmoni�i toplad�m.Harmonik olu�turup toplama sebebimiz ise sesin ger�ek sese yak�n ��kmas�d�r.
end
