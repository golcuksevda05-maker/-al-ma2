ROULETTE PRO AI V2.9.12 • MULTI TABLE COLLECTOR

YENİ ÇOKLU MASA TOPLAYICI
- Program, bağlı Chrome oturumunun Pragmatic lobi/ağ yanıtlarında gerçekten
  görünen rulet masa kimliklerini keşfeder.
- Yalnız kullanıcının oturumunda görülmüş, yetkili Pragmatic games bağlantı
  şablonunu ve statisticHistory yanıtını kullanır.
- Masaların geçmişi en fazla 6 eşzamanlı API isteğiyle alınır.
- Başarılı bir masa geçmişi 10 dakikadan önce yeniden istenmez; başarısız
  istekte 60 saniye sonra tekrar denenir.
- Oyun kartları açılmaz; tarayıcı lobide kalır ve video/OpenCV kullanılmaz.
- Her masa ayrı tableId bankasında tutulur:
  %LOCALAPPDATA%\PragmaticRouletteTracker

KESİN MASA İZOLASYONU
- Arka plandaki bir masanın ham spinleri açık masanın history, tahmin,
  doğrulama, NET, K1/K2 veya LOCKED LIVE kayıtlarına girmez.
- Aktif masanın tahmini yalnız aktif tableId verilerini kullanmaya devam eder.
- Eski ortak arşiv birleştirme davranışı kapalı kalır.

ARAYÜZ
- VERİ panelinde aktif/güncel masa sayısı ve toplam saklanan spin görünür.
- MASA BANKALARINI GÖR düğmesi masa adını, spin sayısını, güncelliği,
  son güncelleme zamanını ve veri kaynağını listeler.
- Erişilemeyen veya farklı şemalı masalar hata bilgisiyle listede kalır;
  uydurma sonuç üretilmez.

V2.9.11 KORUNANLAR
- Tıkla + yaz + kaydır öğret/replay sırası ve replay JavaScript düzeltmesi.
- NET sayı, AKIŞ/TABLO/ÇARK, K1/K2, yedekler ve LOCKED LIVE mantığı.
- Mevcut eğitim kaydı aynen kullanılır; yeniden öğretmek gerekmez.

ÇALIŞTIR
ÖNCE ZIP DOSYASININ TAMAMINI BİR KLASÖRE ÇIKART.
ZIP/RAR penceresinin içinden BAT dosyasına çift tıklama; WinRAR bu durumda
yalnız BAT dosyasını geçici klasöre çıkartır ve Python dosyaları bulunamaz.

BASLAT_ROULETTE_V2_9_12_MULTI_TABLE_COLLECTOR.bat

NOT
Masa sayısı Pragmatic lobisinin ve kullanıcının giriş yaptığı sitenin o anda
tarayıcı oturumuna gerçekten sunduğu veriyle sınırlıdır.

CANLI SONUÇ SENKRON DÜZELTMESİ
- Büyük canlı sonuç rozeti, SON500 tablosundan önce güncellenirse sonuç üç
  ardışık DOM okumasıyla doğrulanıp SON20'nin başına eklenir.
- SON500 daha sonra aynı sonucu gösterdiğinde tur ikinci kez sayılmaz.
- Böylece tahmin ve karşılaştırma bir tur geriden ilerlemez.

PRAGMATIC MASA GEZGİNİ
- Yeniden öğretme gerekmez; eski ÖĞREN yolu aynen korunur.
- VERİ panelindeki PRAGMATIC MASALARI TARA düğmesi, Pragmatic Play Lobby
  katalog bağlantısını ayrı arka plan sekmesinde açar.
- Sağlayıcı lobisinin sol kategori menüsünü açar, Rulet kategorisini seçer
  ve rulet listesini aşağı kaydırarak tarar.
- Rulet kartlarına tıklamaz; lobi yanıtları/DOM içindeki masa kimliklerini
  keşfeder ve yetkili statisticHistory endpoint'inden ayrı masa bankalarına
  geçmiş verisi alır.
- Başarılı son 500 penceresi 10 dakika dolmadan tekrar istenmez. Yeni pencere
  mevcut masa arşiviyle karşılaştırılır; yalnızca yeni sonuçlar arşive eklenir.
- OTOMATİK OYUN, bahis, spin ve çip düğmeleri tarama dışında bırakılır.
- TARAMAYI DURDUR düğmesi gezintiyi istediğiniz anda keser.
- Tarama ayrı bir arka plan Chrome hedefinde yürür; oyun oturumlarına girmez.
- Tarayıcıda aynı sekmeye bağlı iç iframe/OOPIF hedefleri de taramaya dahildir.
- Arka plan lobisinde soldaki kategori menüsü otomatik açılır, Rulet seçilir
  ve yalnız data-gameid ile ayrılan gerçek rulet kartları sırayla gezilir.
- VERİ, KAYNAKLAR, PERFORMANS, GEÇMİŞ, 2 KOMŞU ve 1 KOMŞU panelleri
  fare tekerleğiyle dikey kaydırılabilir; sağda kaydırma çubuğu görünür.
