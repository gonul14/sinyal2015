function [xx,tt]=note(frekans,vurus)  %note fonksiyonu giriş olarak frekans ve vurus değerleri alır.
Fs=8192; %Fs sabit değerim
tt=0:1/Fs:((0.25-(1/Fs))/2);  %0'dan başlattım 1/Fs kadar arttırdım.0.25-1/Fs yaptım çünkü 0. elemanıda sayıcak 1 değer düşürdüm ve 0,24  yaptım.2048 eleman oldu.Boyut eşitlensin diye "(0,25-1/Fs)/2" ikiye böldüm.1024 elemana kadar artırdım.
zz=0; %z'yi sıfırladım.
   xx=sin(2*pi*frekans*tt); %sinüs sinyalini tanımladım.
if length(xx)==length(zz)    %z ve x 'in boyutu eşitse
       zz=[linspace(0,1.5,Fs*vurus*(2/8)),linspace(1.5,1,Fs*vurus*(1/8)),linspace(1,1,Fs*vurus*(4/8)),linspace(1,0,Fs*vurus*(1/8))]; %zz'yi döndür.
end
end
