Fs=8192;%�rnekleme frekans�
ds=Fs*1/100; %duraklama s�resini olu�turdum.
t=struct('line',{});
dosya=fopen('notalar.txt');%notalar.txt dosyas�n� a��cak.
i=1; %sat�r i�in i tan�mlad�m.100 tane sat�r gelicek

satir=fgetl(dosya);

while ischar(satir)
t(i).line=satir;%t(i) ile line �arp ve sat�r'a ata.
satir=fgetl(dosya);
i=i+1;%sat�r� her seferinde bir artt�r.
end
fclose(dosya);%dosyay� kapat.

for i=1:length(t)
disp(t(i).line);%disp ile t(i).line ��k���n� verir yani yazd�r�r.

end
satir='nota,oktav,olcu'; %sat�r tan�mlad�m ona nota oktav ve �l��(s�re) 3 tane de�er string verdim.
c=strsplit(satir,','); %virg�l'den sonra ay�rd�m.her bir stringi 
nota=c(1); %nota de�i�kenine ilk stringi atad�m.
oktav=c(2); %oktav de�i�kenine ikinci stringi atad�m.
olcu=c(3); %�l��(s�re) de�i�kenine ���nc� stringi atad�m.
frekans=frek(nota,oktav);%frekans� frek fonksiyonundan okudu�um nota ve oktav de�eriyle d�nd�rd�m.
a=note(frekans,olcu); %note fonksiyonunun �retti�i sin�s sinyalini a de�i�kenine atad�m.
notalar=[notalar a ds];%notalar ad�nda de�i�ken olu�turdum notalar� sin�s sinyalini ve duraklama s�resini ekledim her bir nota i�in bunu yap�cak.
