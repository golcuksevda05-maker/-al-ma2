ROULETTE PRO AI V2.9.30 • TEK SEKME LOBİ TOPLAYICI

SORUN
- SEKMELİ LOBİ TOPLA modunda program lobiye giriyor ve masa kartlarını buluyordu.
- Fakat masaları gerçek tıklama ile açmak yerine data-gameid üzerinden yeni/sentetik sekme URL'i deneyebiliyordu.
- Bu yüzden bazı operatörlerde masa gerçekten açılmadan sekme kapanıp sıradaki masaya geçiyordu.

YENİ ÇÖZÜM
- Sekmeli toplayıcı artık ekstra/sentetik masa sekmeleri üretmez.
- Tek bir yan Chrome sekmesi açılır.
- O sekmede Pragmatic Play Lobby kartına girilir.
- Rulet lobisindeki gerçek masa kartları bizzat tıklanır.
- Masa açıldıktan sonra aynı sekmede SON500/statisticHistory beklenir.
- Veri gelirse kaydedilir, sonra history.back ile lobiye dönülür.
- Sonra sıradaki masa kartı tıklanır.
- Tur bitince 5 dakika sonra tekrar başlar.

AKIŞ
1. Kullanıcı kendi oyununu ayrı sekmede oynamaya devam eder.
2. Program yan tarafta tek collector sekmesi açar.
3. Collector sekmesi Pragmatic Play Lobby -> Rulet bölümüne girer.
4. 1. masa kartını gerçek tıklama ile açar.
5. SON500/statisticHistory verisini bekler.
6. Veri alınırsa masa bankasına yazar.
7. Lobiye geri döner.
8. 2. masa kartına geçer.
9. Tüm masaları böyle gezer.

EKRAN DURUMLARI
- TEK SEKME TOPLA: Pragmatic Play lobisi açılıyor
- SEKMELİ TOPLA: masa kartı tıklandı • ... • SON500/statisticHistory bekleniyor
- SEKMELİ TOPLA: NETWORK veri alındı • ... • sekme kapatılıyor
- SEKMELİ TOPLA: veri zaman aşımı • lobiye dönülüyor
- SEKMELİ TOPLA: Rulet lobisi • ... kart • tek yan sekme • kalan ... kart

NOTLAR
- Bu mod yeni sekme yağmuru yapmaz; tek yan sekmede yürür.
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- Veri gelmeden sadece tableId yakalandı diye masadan çıkmaz.
