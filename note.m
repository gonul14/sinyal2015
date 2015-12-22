function [xx,tt]=note(frekans,vurus)  %note fonksiyonu giriþ olarak frekans 
Fs=8192; %Fs sabit deðerim
tt=0:1/Fs:((0.25-(1/Fs))/2);  %0'dan baþlattým 1/Fs kadar arttýrdým.0.25-1/Fs yaptým çünkü 0. elemanýda sayýcak 1 deðer düþürdüm ve 0,24  yaptým.2048 eleman oldu.Boyut eþitlensin diye "(0,25-1/Fs)/2" ikiye böldüm.1024 elemana kadar artýrdým.
zz=0; %z'yi sýfýrladým.
   xx=sin(2*pi*frekans*tt); %sinüs sinyalini tanýmladým.
if length(xx)==length(zz)    %z ve x 'in boyutu eþitse
       zz=[linspace(0,1.5,Fs*vurus*(2/8)),linspace(1.5,1,Fs*vurus*(1/8)),linspace(1,1,Fs*vurus*(4/8)),linspace(1,0,Fs*vurus*(1/8))]; %zz'yi döndür.
end
end