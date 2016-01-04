Ad Soyad  :Gönül ÖZPULAT
Öğrenci No:030113006
Ders Adı  :Matlab
Proje:Matlab ile Sentezleme



** "notalar.png":

                          - dosyasında seçtiğim müziğin notalarının resmi bulunmaktadır.png türündeki dosyadır.

** "notalar.txt" :

                         -txt türündedir.Dosyanın içinde seçtiğim müzik notalarının içindeki her ölçü için bulduğum notalar ,oktavlar ve süreler(vuruş değerleri) bulunmaktadır.

** "sentez.m" :

                         - matlab türünde bir dosyadır.İçinde txt dosyasından okuma yapılarak ;
                              frek yardımıyla frekanslar hesaplandı,note ile sinüs sinyalleri oluşturuldu.
                              Echo oluşturdum.Tepe değer yükseldiği için
                              normalizasyon işlemi yaptım.sound ile müzik çalındı.

** "note.m"  :

                       - matlab türünde dosyadır.İçinde note adında bir fonksiyon bulunan dosyadır.Benim verdiğim giriş değerlerine göre sinüs sinyali döndürür.
                          Sinyal zarfa koyuldu  aynı zamanada harmonikler eklendi.

** "note_cgr.m" :

                          -matlab türünde dosyadır.İçinde note fonksiyonunu çağırırım. 

** "frek.m"  :

                    -dosyasında notanın frekansını vermiş olduğum girişteki nota ve oktava göre "frek(nota,oktav)" bulan frek fonksiyonunun bulunduğu dosyadır. 
    
** "frek_cgr.m" :
                       
                   -matlab türünde dosyadır.İçinde frek fonksiyonunu çağırırım.

** "README.md" :

                    -dosyası içinde bulunduğum dosyadır.Proje de yer alan her dosya ile ilgili açıklama yaptığım dosyanın adıdır.

Not:frek_cgr.m ve note_cgr.m dosyaları benim frek.m ve note.m deki fonksiyonları çağırmak için oluşturduğum dosyalardır.
       Oluşturmaya gerek yoktur aslında zaten sentez.m de çağırılıp işlemleri arka planda yapılmaktadır.Ben onları görmek için oluşturdum.
             