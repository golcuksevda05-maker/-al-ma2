ROULETTE PRO AI V2.9.39 • MASA KİLİT SON500

SORUN
- Ekranda gerçek rulet masası açıktı ve SON 500 paneli görünüyordu.
- Buna rağmen program durum satırında 'Rulet lobisi' gibi davranabiliyordu.
- Sebep: Aktif masa ekranındaki bahis gridleri / sayı alanları / bazı görsel bloklar, genel lobi kart tarayıcısı tarafından masa kartı/lobi içeriği gibi yorumlanabiliyordu.
- Bu olunca program SON500 paneli açık olan gerçek masayı okumak yerine lobi tarama modunda kalabiliyordu.

DÜZELTME
1. Aktif oyun masası önce algılanır.
   - Sağ üst oyun içi Lobi düğmesi varsa,
   - bahis/masa arayüzü görünüyorsa,
   - program önce bunun gerçek oyun masası olduğunu kabul eder.

2. SON500 görünüyorsa masa kilitlenir.
   - Genel lobi/kart taraması durdurulur.
   - Bekleme kilidi yoksa yeniden oluşturulur.
   - Bir sonraki taramada HISTORY500_SCAN çalışır ve SON500 paneli okunur.
   - Durum satırı: 'masa açık • SON500 paneli görüldü • 500 spin okunuyor'

3. SON500 yoksa anında atlanır.
   - Gerçek oyun masası açık ama SON500/LAST500 kontrolü yoksa masayı lobi sanmaz.
   - 'SON500 paneli yok • anında es geçiliyor' diyerek Lobi düğmesine basar ve sıradaki masaya geçer.

BEKLENEN DURUM YAZILARI
- SEKMELİ TOPLA: masa açık • SON500 paneli görüldü • ... • 500 spin okunuyor
- SEKMELİ TOPLA: sağ-alt SON500 paneli kaydedildi • ... • 500/500 • minimum bekleme sonrası lobiye dönülecek
- SEKMELİ TOPLA: SON500 paneli yok • ... • anında es geçiliyor

500 SPİN KONTROLÜ
- VERİ DURUMU alanında 'PRAGMATIC DIRECT: 500/500' veya 'PRAGMATIC statisticHistory network: 500/500' görürsen veri çekilmiştir.
- 'UZUN MASA ARŞİVİ: 500+' o masanın arşive yazıldığını gösterir.
- 'MASA BANKALARINI GÖR' ile tüm masa kayıtlarını ve spin sayılarını görebilirsin.
