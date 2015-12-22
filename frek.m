function ff=frek(nota,oktav)  %olu�turdu�um fonksiyon nota ve oktava g�re arg�man alacaklar.
notalar={'Do','Dod', 'Re', 'Mib' ,'Mi' ,'Fa', 'Fad', 'Sol', 'Sold', 'La', 'Sib', 'Si','sus'}; %notalar i�in tan�mlad���m karakterler.
referans=16.35;  %do notas�n�n 0.oktavdaki de�erini referans olarak ald�m.
k=length(notalar); %k de�i�kenine notalar dizisinin uzunlu�unu atad�m.
susf=0; %susf sus frekans� i�in 0 yapt�m.
if nargin<2 %n. arg�man giri�i 2'den az ise
     oktav=4; %oktav� 4 olarak al.ff de�erini �yle olu�tur.
end

for i=0:8 %oktav i�in bir for olu�turdum ve her seferinde bir artt�rd�m.
    if i==oktav %i'nin de�eri benim giri� yapt���m oktav'�n de�erine e�itse(i==oktav) ise if'in i�ine gir.
       for j=1:k %notalar dizindeki elemanlar i�in for d�ng�s� olu�turdum.j'yi 1'den ba�latma sebebim ise matlabta dizilerde(matrislerde) 0. eleman yoktur ,1.elemandan ba�lar.
           if  size(nota)==size(notalar{j}) %arg�man olarak girdi�im nota'n�n boyutu notalar�n j.eleman�n boyutuna e�it ise if'in i�ine gir. 
             
              if nota==notalar{j}%giri� yapt���m nota ,notalar dizisindeki j. elemana e�itse if'in i�ine gir.
                 ff=2^i*(2^((j-1)/12)*referans);
                 if size(nota)==size(notalar{13}) %boyut e�itliyorum.giri� yapt���m notan�n boyutu 13.arg�mana e�itse if'e gir.
                  
                     if nota==notalar{13}%giri� yapt���m nota ,notalar dizisindeki 13.elemansa yani 'sus' ise 
                       ff=susf;           %ff=susf olsun yani ff=0 olur.
                     end
                 
                 end  
              end   
           end
       end
     end
end
end






