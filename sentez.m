%%de�i�kenleri tan�mlad�m.

Fs=5700; %�rneklem frekans�n� m�zikten ��kan sese g�re 5700 olarak tan�mlad�m.
gecikme_suresi=round(Fs/10);  %gecikme s�resini tan�mlad�m ve gecikme s�resini round ile en yak�n tamsay�ya yuvarlad�m.
notalar=[];  %notalar�n bulundu�u de�i�ken.
duraklama=zeros(1,round(Fs/100)); % %duraklama suresi
okt_degis=0;   %oktav'a eklenmek istenen deger okt_degis degiskeniyle eklenecek
%%
%%txt'den dosya okundu.
dosya=fopen('notalar.txt','r'); %text dosyas�n� acar,'r'ile okur.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %txt'de , ile ayr�lm�� olan ifadeleri oku ve nota,oktav ve �l�� de�i�kenlerine ata.
fclose(dosya); %txt dosyas�n� kapat.
frekans=zeros(1,length(nota)); %frekans'a 1'den ba�lay�p txt'den �ekilen nota uzunlu�u kadar olu�tur ve frekansa ata.
%%
%%oktav de�i�tirmek i�in if olu�turup d�ng�ye girdim.
if okt_degis~=0 %oktdegis ana de�eri 0,e�er 0 de�ilse if'e gir. 
    for j=1:length(oktav) %j=1'den ba�las�n txt'den cekilen oktav uzunlu�u kadar d�ng� devam etsin.
        oktav(j)=oktav(j)+okt_degis; %j. oktava oktdegis de�erini eklesin.
    end
end
%%
%%txt'den okunan nota oktav ve �l�� de�erleri ile frekten
%%frekanslar,note'den sin�s sinyalleri hesapland�.notalara eklendi.
for i=1:length(nota) %txt'den �ekilen nota kadar d�ng� devam etsin.
    frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonu ca��r�larak frekans de�erleri hesapland�. 
    [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonu ile her bir frekans ve �l�� i�in sin�s sinyalleri olu�turuldu.
    notalar=[notalar sindalga duraklama]; %notalar sindalga ve duraklama her seferinde ard ard eklenerek notalara atand�.
end  
%%
%%echo i�in for olu�turuldu.
for i=1:length(notalar) %notalar kadar d�ng� devam etsin.(echo i�in)
    if (i+gecikme_suresi)<length(notalar)
        notalar(i+gecikme_suresi)=notalar(i+gecikme_suresi)+0.3*notalar(i); 
    end
end

%%normalizasyon yap�ld�.
notalar = notalar/max(abs(notalar));%normalize etmek i�in (tepe de�erini 1'e d���rmek i�in) notalar�n max ald�m.
plot(notalar) %notalar �izildi.
sound(notalar,Fs); %sound ile m�zi�i �ald�rd�m.