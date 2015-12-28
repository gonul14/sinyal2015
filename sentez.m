Fs=8192;%örnekleme frekansý
ds=Fs*1/100; %duraklama süresini oluþturdum.
t=struct('line',{});
dosya=fopen('notalar.txt');%notalar.txt dosyasýný açýcak.
i=1; %satýr için i tanýmladým.100 tane satýr gelicek

satir=fgetl(dosya);

while ischar(satir)
t(i).line=satir;%t(i) ile line çarp ve satýr'a ata.
satir=fgetl(dosya);
i=i+1;%satýrý her seferinde bir arttýr.
end
fclose(dosya);%dosyayý kapat.

for i=1:length(t)
disp(t(i).line);%disp ile t(i).line çýkýþýný verir yani yazdýrýr.

end
satir='nota,oktav,olcu'; %satýr tanýmladým ona nota oktav ve ölçü(süre) 3 tane deðer string verdim.
c=strsplit(satir,','); %virgül'den sonra ayýrdým.her bir stringi 
nota=c(1); %nota deðiþkenine ilk stringi atadým.
oktav=c(2); %oktav deðiþkenine ikinci stringi atadým.
olcu=c(3); %ölçü(süre) deðiþkenine üçüncü stringi atadým.
frekans=frek(nota,oktav);%frekansý frek fonksiyonundan okuduðum nota ve oktav deðeriyle döndürdüm.
a=note(frekans,olcu); %note fonksiyonunun ürettiði sinüs sinyalini a deðiþkenine atadým.
notalar=[notalar a ds];%notalar adýnda deðiþken oluþturdum notalarý sinüs sinyalini ve duraklama süresini ekledim her bir nota için bunu yapýcak.
