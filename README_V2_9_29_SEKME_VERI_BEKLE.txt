ROULETTE PRO AI V2.9.29 • SEKME VERİ BEKLE DÜZELTMESİ

SORUN
- V2.9.28'de SEKMELİ LOBİ TOPLA masalara girebiliyordu.
- Fakat masa açılır açılmaz tableId yakalandığı için sekme hızlı kapanabiliyordu.
- Bu durumda SON500/statisticHistory tam alınmadan sıradaki masaya geçilmiş gibi görünüyordu.

DÜZELTME
- Sekmeli toplama modunda tableId tek başına yeterli kabul edilmiyor.
- Sekme artık sadece şu durumlarda kapanır:
  1. Gerçek SON500/statisticHistory verisi alınır ve en az 20 sonuç ayrıştırılır.
  2. Masa için veri bekleme süresi dolar.
- Bekleme süresi 55 saniyeye çıkarıldı.
- Erken API/Python hatası artık sekmeyi kapatmıyor; gerçek Chrome sekmesi veri için beklemeye devam ediyor.
- Chrome Network üzerinden gelen statisticHistory cevapları da sekmeli toplayıcı tarafından kaydediliyor.

YENİ DAVRANIŞ
- Masa açıldıktan sonra ekranda şu tip durum görebilirsin:
  SEKMELİ TOPLA: tableId yakalandı • ... • SON500/statisticHistory bekleniyor
- Veri alınırsa:
  SEKMELİ TOPLA: NETWORK veri alındı • ... • sekme kapatılıyor
  veya
  SEKMELİ TOPLA: veri alındı • ... • sıradaki masaya geçiliyor
- Veri hiç gelmezse ancak süre sonunda:
  SEKMELİ TOPLA: veri zaman aşımı • sekme kapatılıyor

NOT
- Amaç masayı hızlı gezmek değil, her masada gerçekten SON500/statisticHistory alınana kadar beklemektir.
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
