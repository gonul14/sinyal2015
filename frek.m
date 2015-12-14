function ff=frek(nota,oktav)  %olu�turdu�um fonksiyon nota ve oktava g�re arg�man alacaklar.

do='D'; %her bir notaya karakter tan�mlad�m .
dodiyez='d';
re='R';
mibemol='m';
mi='M';
fa='F';
fadiyez='f';
sol='G';
soldiyez='g';
la='L';
sibemol='s';
si='S';
notalar=['D' 'd' 'R' 'm' 'M' 'F' 'f' 'G' 'g' 'L' 's' 'S']; %nota i�in tan�mlad���m karakterleri notalar dizisine atad�m.
referans=16.35;  %do notas�n�n 0.oktavdaki de�erini referans olarak ald�m.
k=length(notalar); %k de�i�kenine notalar dizisinin uzunlu�unu atad�m.

for i=0:8 %oktav i�in bir for olu�turdum ve her seferinde bir artt�rd�m.
    if i==oktav %i'nin de�eri benim giri� yapt���m oktav'�n de�erine e�itse(i==oktav) ise if'in i�ine gir.
for j=1:k %notalar dizindeki elemanlar i�in for d�ng�s� olu�turdum.j'yi 1'den ba�latma sebebim ise matlabta dizilerde(matrislerde) 0. eleman yoktur ,1.elemandan ba�lar.
    if nota==char(notalar(j)) %giri� yapt���m nota ,notalar dizisindeki j. elemana e�itse if'in i�ine gir.
        ff=2^i*(2^((j-1)/12)*referans);%2^i olmas�n�n sebebi oktav� her de�i�ti�inde 2 kat�na ��k�yor.(j-1) olma sebebide j'nin 1 den ba�lamas�d�r.
    end
end
    end
end
end



