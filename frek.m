function ff=frek(nota,oktav) %girilen nota ve oktav degerine gore frekansi hesaplayan fonksiyon tanýmladým
notalar={'Do' 'Dod' 'Re' 'Red' 'Mi' 'Fa' 'Fad' 'Sol' 'Sold' 'La' 'Lad' 'Si' 'sus'};%Do,Dod,..notalar belli bir standartta tanýmladým. 
referans=16.35;    %referansýmý tanýmladým.
k=length(notalar); %notalar dizisinin eleman sayýný p deðiþkenine atadým.
if nargin<2        %giriþ yapýlan argüman deðeri 2'den küçük ise 
    oktav=4;       %oktavý 4'e eþitle.
end
for i=0:8        %i 0'dan baþlayýp 8'e kadar artsýn.oktav için tanýmladým.
    if i==oktav  %i girilen oktava eþit ise if'e gir.
        for j=1:k  %j'yi 1'den notalar kadar arttýr.
            if size(nota)==size(notalar{k}) %girilen nota ile notalar içindeki j.elemanýn boyutu ayný ise
                if nota==notalar{k}          %girilen nota ile notalardaki eleman ayný ise formulü hesapla.
                    ff=2^i*(2^((j-1)/12)*referans); 
                end                                 
            end     
            if size(nota)==size(notalar{j}) %girilen nota ile notalardaki eleman boyutu eþit ise
                if nota==notalar{j}         %girilen notanin notalardaki j. eleman ise formülü hesapla
                    ff=2^i*(2^((j-1)/12)*referans); 
                end                                   
            end    
        end
    end
end
end