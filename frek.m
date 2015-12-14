function ff=frek(nota,oktav)  %oluþturduðum fonksiyon nota ve oktava göre argüman alacaklar.

do='D'; %her bir notaya karakter tanýmladým .
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
notalar=['D' 'd' 'R' 'm' 'M' 'F' 'f' 'G' 'g' 'L' 's' 'S']; %nota için tanýmladýðým karakterleri notalar dizisine atadým.
referans=16.35;  %do notasýnýn 0.oktavdaki deðerini referans olarak aldým.
k=length(notalar); %k deðiþkenine notalar dizisinin uzunluðunu atadým.

for i=0:8 %oktav için bir for oluþturdum ve her seferinde bir arttýrdým.
    if i==oktav %i'nin deðeri benim giriþ yaptýðým oktav'ýn deðerine eþitse(i==oktav) ise if'in içine gir.
for j=1:k %notalar dizindeki elemanlar için for döngüsü oluþturdum.j'yi 1'den baþlatma sebebim ise matlabta dizilerde(matrislerde) 0. eleman yoktur ,1.elemandan baþlar.
    if nota==char(notalar(j)) %giriþ yaptýðým nota ,notalar dizisindeki j. elemana eþitse if'in içine gir.
        ff=2^i*(2^((j-1)/12)*referans);%2^i olmasýnýn sebebi oktavý her deðiþtiðinde 2 katýna çýkýyor.(j-1) olma sebebide j'nin 1 den baþlamasýdýr.
    end
end
    end
end
end



