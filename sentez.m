%%deðiþkenleri tanýmladým.

Fs=5700; %Örneklem frekansýný müzikten çýkan sese göre 5700 olarak tanýmladým.
gecikme_suresi=round(Fs/10);  %gecikme süresini tanýmladým ve gecikme süresini round ile en yakýn tamsayýya yuvarladým.
notalar=[];  %notalarýn bulunduðu deðiþken.
duraklama=zeros(1,round(Fs/100)); % %duraklama suresi
okt_degis=0;   %oktav'a eklenmek istenen deger okt_degis degiskeniyle eklenecek
%%
%%txt'den dosya okundu.
dosya=fopen('notalar.txt','r'); %text dosyasýný acar,'r'ile okur.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %txt'de , ile ayrýlmýþ olan ifadeleri oku ve nota,oktav ve ölçü deðiþkenlerine ata.
fclose(dosya); %txt dosyasýný kapat.
frekans=zeros(1,length(nota)); %frekans'a 1'den baþlayýp txt'den çekilen nota uzunluðu kadar oluþtur ve frekansa ata.
%%
%%oktav deðiþtirmek için if oluþturup döngüye girdim.
if okt_degis~=0 %oktdegis ana deðeri 0,eðer 0 deðilse if'e gir. 
    for j=1:length(oktav) %j=1'den baþlasýn txt'den cekilen oktav uzunluðu kadar döngü devam etsin.
        oktav(j)=oktav(j)+okt_degis; %j. oktava oktdegis deðerini eklesin.
    end
end
%%
%%txt'den okunan nota oktav ve ölçü deðerleri ile frekten
%%frekanslar,note'den sinüs sinyalleri hesaplandý.notalara eklendi.
for i=1:length(nota) %txt'den çekilen nota kadar döngü devam etsin.
    frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonu caðýrýlarak frekans deðerleri hesaplandý. 
    [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonu ile her bir frekans ve ölçü için sinüs sinyalleri oluþturuldu.
    notalar=[notalar sindalga duraklama]; %notalar sindalga ve duraklama her seferinde ard ard eklenerek notalara atandý.
end  
%%
%%echo için for oluþturuldu.
for i=1:length(notalar) %notalar kadar döngü devam etsin.(echo için)
    if (i+gecikme_suresi)<length(notalar)
        notalar(i+gecikme_suresi)=notalar(i+gecikme_suresi)+0.3*notalar(i); 
    end
end

%%normalizasyon yapýldý.
notalar = notalar/max(abs(notalar));%normalize etmek için (tepe deðerini 1'e düþürmek için) notalarýn max aldým.
plot(notalar) %notalar çizildi.
sound(notalar,Fs); %sound ile müziði çaldýrdým.