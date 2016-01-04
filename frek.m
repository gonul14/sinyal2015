function ff=frek(nota,oktav) %girilen nota ve oktav degerine gore frekansi hesaplayan fonksiyon tan�mlad�m
notalar={'Do' 'Dod' 'Re' 'Red' 'Mi' 'Fa' 'Fad' 'Sol' 'Sold' 'La' 'Lad' 'Si' 'sus'};%Do,Dod,..notalar belli bir standartta tan�mlad�m. 
referans=16.35;    %referans�m� tan�mlad�m.
k=length(notalar); %notalar dizisinin eleman say�n� p de�i�kenine atad�m.
if nargin<2        %giri� yap�lan arg�man de�eri 2'den k���k ise 
    oktav=4;       %oktav� 4'e e�itle.
end
for i=0:8        %i 0'dan ba�lay�p 8'e kadar arts�n.oktav i�in tan�mlad�m.
    if i==oktav  %i girilen oktava e�it ise if'e gir.
        for j=1:k  %j'yi 1'den notalar kadar artt�r.
            if size(nota)==size(notalar{k}) %girilen nota ile notalar i�indeki j.eleman�n boyutu ayn� ise
                if nota==notalar{k}          %girilen nota ile notalardaki eleman ayn� ise formul� hesapla.
                    ff=2^i*(2^((j-1)/12)*referans); 
                end                                 
            end     
            if size(nota)==size(notalar{j}) %girilen nota ile notalardaki eleman boyutu e�it ise
                if nota==notalar{j}         %girilen notanin notalardaki j. eleman ise form�l� hesapla
                    ff=2^i*(2^((j-1)/12)*referans); 
                end                                   
            end    
        end
    end
end
end