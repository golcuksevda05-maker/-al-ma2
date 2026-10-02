ROULETTE PRO AI V2.9.18 • VERİ BEKLEYEN TIKLA-TANI TARAMA

SORUN
- V2.9.17'de arka plan lobi sekmesi masa kartını tıklıyor, fakat tableId
  yakalanır yakalanmaz çok hızlı lobiye dönüyordu.
- Bu yüzden bazı masalarda statisticHistory / SON500 verisi çekilmeden sıradaki
  masaya geçilebiliyordu.

DÜZELTME
- Masa kartı tıklanınca program artık yalnız tableId gelmesini değil, mümkünse
  statisticHistory / SON500 verisinin gerçekten alınmasını bekler.
- tableId yakalanınca durum satırında "veri çekiliyor" görünür.
- Veri başarıyla alınırsa "veri alındı • sıradaki masaya geçiliyor" yazıp
  hızlıca lobiye döner.
- Veri gelmezse kısa zaman aşımıyla masayı geçer; tarama takılı kalmaz.
- Ekstra yeni sekme açma yoktur; arka plan collector/lobi sekmesi içinde
  görünen kartlar tek tek tıklanır.

HIZ
- Veri hızlı gelirse masa hızlı geçilir.
- Veri gelmeyen masa en fazla kısa süre bekletilir, sonra sıradaki görünür
  karta geçilir.

DURUM SATIRLARI
- "masa kartı açıldı • veri/SON500 bekleniyor"
- "tableId yakalandı • veri çekiliyor"
- "veri alındı • sıradaki masaya geçiliyor"
- "masa denemesi tamamlandı • lobiye dönülüyor"

GÜVENLİK
- Bahis yapmaz, çip seçmez, spin başlatmaz.
- Arka plan taraması aktif kullanıcının açık masasındaki tahmin/history verisiyle
  karıştırılmaz.
