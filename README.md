Ad Soyad  :Gönül ÖZPULAT
Öğrenci No:030113006
Ders Adı  :Matlab
Proje:Matlab ile Sentezleme

HAFTA 2 

** "notalar.png":

                          - dosyasında seçtiğim müziğin notalarının resmi bulunmaktadır.png türündedir.

** "notalar.txt" :

                         -txt türündedir.Dosyanın içinde seçtiğim müzik notalarının içindeki her ölçü için bulduğum notalar ve süreler(vuruş değerleri) bulunmaktadır.

** "sentez.m" :

                         - matlab türünde bir dosyadır.Henüz içeriği boş olan dosyadır.

** "note.m"  :

                       - matlab türünde dosyadır.İçinde note adında bir fonksiyon bulunan dosyadır.Benim verdiğim giriş değerlerine göre sinüs sinyali döndürecektir.

** "note_cgr.m" :

                          -matlab türünde dosyadır.İçinde note fonksiyonunu çağırırım. 

** "frek.m"  :

                    -dosyasında notanın frekansını vermiş olduğum girişteki nota ve oktava göre "frek(nota,oktav)" bulan frek fonksiyonunun bulunduğu dosyadır. 
    
** "frek_cgr.m" :
                       
                   -matlab türünde dosyadır.İçinde frek fonksiyonunu çağırırım.

** "README.md" :

                    -dosyası içinde bulunduğum dosyadır.Proje de yer alan her dosya ile ilgili açıklama yaptığım dosyanın adıdır.

HAFTA 3

**"note.m":

           - matlab türünde   bulunan sinüs sinyalini zarflayarak yeni sinyal oluşturduk.
           note fonksiyonunun giriş argümanları "note(frekans,vurus)" frekans ve vurus değerlerine göre döndürülecektir.


**"frek.m":

           -notalardaki eleman notasyonlarını düzenledim.(Do,Re,Mi,Fa,Sol,Dod,Sib..) gibi
           fonksiyona "sus" verince nota olarak f=0 döndürmesini sağladım. 
           fonksiyona oktav argümanı verilmemişse oktav=4'te  kabul etsin ve ona göre bana f değerlerini dödürmesini sağladım.

**"notalar.txt":

                -nota,oktav,ölçü şeklinde düzenledim. 

HAFTA 4

**"note.m":

               -sinüs sinyalini gerçek sese çevirmek için notanın harmoniklerini de sinyale ekledim.3 adet harmonik ekledim.

**"sentez.m":

              -txt dosyasını satır satır okuyan program yazdım.Sonra split kullanarak virgüller yardımıyla ayırıldı ve yeni değişkenlere atadım.
              Sonra bu değişkenler yardımıyla frek fonksiyonu kullanılarak frekans bulduk.note fonksiyonunu bir değişkene atayıp onun da sinüs sinyali dödürmesini sağladım.
              notalar değişkeni tanımlayıp notaları note fonksiyonundaki sinüs sinyalini ve duraklama süresini ekleyip döndürmesini sağladım.
              
             