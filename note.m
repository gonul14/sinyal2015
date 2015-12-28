function [xh,t]=note(frekans,olcu)  %giriþinden frekans ve ölçü olarak argüman alan note fonksiyonunu tanýmladý.
Fs=8192; %örnekleme frekansýný belirledim.
t=0:1/Fs:olcu-1/Fs;  %0'dan baþlattým 1/Fs kadar arttýrdým.Ölçü deðerinden 1/Fs çýkardým.
                     %Eðer 1/fs ölçü deðerinden çýkarýlmazsa 1025 elemanlý
                     %oluyor x,boyut hatasý veriyor o yüzden 1/fs'yi çýkartýnca 1024 elemanlý olur.
                     
x=sin(2*pi*frekans*t); %sinüs sinyalini tanýmladým.
zarf=[linspace(0,1.5,length(t)*(2/8)),linspace(1.5,1,length(t)*(1/8)),linspace(1,1,length(t)*(4/8)),linspace(1,0,length(t)*(1/8))]; 
%0-1.5'e kadar length(t)*2/8 artýmla ,diðer tüm aralýklar içinde ayný
%iþlemler linspace ile yaptým ve zarf'a koydum.
xz=x.*zarf; %Her bir t için hesaplanan x ile zarftaki elemanlar çarpýlýr.xz'ye atadým.


x2=0.8*sin(2*pi*frekans*t*2); %1.harmonik için sinüs sinyali oluþturdum.
x3=0.4*sin(2*pi*frekans*t*3); %2.harmonik için sinüs sinyali oluþturdum.
x4=0.1*sin(2*pi*frekans*t*4); %3.harmonik için sinüs sinyali oluþturdum.
xh=x+x2+x3+x4;  %x sinyali ve 3 harmoniði topladým.Harmonik oluþturup toplama sebebimiz ise sesin gerçek sese yakýn çýkmasýdýr.
end
