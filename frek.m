function ff=frek(nota,oktav)  %oluþturduðum fonksiyon nota ve oktava göre argüman alacaklar.
notalar={'Do','Dod', 'Re', 'Mib' ,'Mi' ,'Fa', 'Fad', 'Sol', 'Sold', 'La', 'Sib', 'Si','sus'}; %notalar için tanýmladýðým karakterler.
referans=16.35;  %do notasýnýn 0.oktavdaki deðerini referans olarak aldým.
k=length(notalar); %k deðiþkenine notalar dizisinin uzunluðunu atadým.
susf=0; %susf sus frekansý için 0 yaptým.
if nargin<2 %n. argüman giriþi 2'den az ise
     oktav=4; %oktavý 4 olarak al.ff deðerini öyle oluþtur.
end

for i=0:8 %oktav için bir for oluþturdum ve her seferinde bir arttýrdým.
    if i==oktav %i'nin deðeri benim giriþ yaptýðým oktav'ýn deðerine eþitse(i==oktav) ise if'in içine gir.
       for j=1:k %notalar dizindeki elemanlar için for döngüsü oluþturdum.j'yi 1'den baþlatma sebebim ise matlabta dizilerde(matrislerde) 0. eleman yoktur ,1.elemandan baþlar.
           if  size(nota)==size(notalar{j}) %argüman olarak girdiðim nota'nýn boyutu notalarýn j.elemanýn boyutuna eþit ise if'in içine gir. 
             
              if nota==notalar{j}%giriþ yaptýðým nota ,notalar dizisindeki j. elemana eþitse if'in içine gir.
                 ff=2^i*(2^((j-1)/12)*referans);
                 if size(nota)==size(notalar{13}) %boyut eþitliyorum.giriþ yaptýðým notanýn boyutu 13.argümana eþitse if'e gir.
                  
                     if nota==notalar{13}%giriþ yaptýðým nota ,notalar dizisindeki 13.elemansa yani 'sus' ise 
                       ff=susf;           %ff=susf olsun yani ff=0 olur.
                     end
                 
                 end  
              end   
           end
       end
     end
end
end






