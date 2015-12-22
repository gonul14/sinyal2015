function [xx,tt]=note(frekans,vurus)  %note fonksiyonu giri� olarak frekans 
Fs=8192; %Fs sabit de�erim
tt=0:1/Fs:((0.25-(1/Fs))/2);  %0'dan ba�latt�m 1/Fs kadar artt�rd�m.0.25-1/Fs yapt�m ��nk� 0. eleman�da say�cak 1 de�er d���rd�m ve 0,24  yapt�m.2048 eleman oldu.Boyut e�itlensin diye "(0,25-1/Fs)/2" ikiye b�ld�m.1024 elemana kadar art�rd�m.
zz=0; %z'yi s�f�rlad�m.
   xx=sin(2*pi*frekans*tt); %sin�s sinyalini tan�mlad�m.
if length(xx)==length(zz)    %z ve x 'in boyutu e�itse
       zz=[linspace(0,1.5,Fs*vurus*(2/8)),linspace(1.5,1,Fs*vurus*(1/8)),linspace(1,1,Fs*vurus*(4/8)),linspace(1,0,Fs*vurus*(1/8))]; %zz'yi d�nd�r.
end
end