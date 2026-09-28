ROULETTE PRO AI V2.9.33 • SON500 PANEL BEKLE

AMAÇ
- Tek sekme toplayıcı masaya girince hemen çıkmasın.
- Oyun masasında sağ alt köşede, OTOMATİK OYUN düğmesinin üstündeki SON 500 spin panelini okusun.
- Veriyi masa bankasına kaydetsin.
- Sonra lobiye dönüp sıradaki masaya geçsin.
- Tur bitince 5 dakika sonra tekrar aynı masaları gezip SON500 üstüne gelen yeni spinleri arşive eklemeye devam etsin.

V2.9.33 DÜZELTMELERİ
1. Sağ-alt SON500 paneli hedefli okuma eklendi.
   - Otomatik Oyun / Automatic Play düğmesini bulur.
   - Bu düğmenin üstündeki sağ-alt sayı gridini özel dikdörtgen bölge olarak tarar.
   - Lobi kartlarındaki, bahis alanındaki, racetrack/komşu alanındaki sayıları başarı saymaz.

2. Masaya girer girmez çıkma engellendi.
   - Masa tıklanınca eski/stale resource kayıtları temizlenir.
   - Önceki masanın statisticHistory cevabı yeni masa sanılmaz.
   - Her masada minimum 12 saniye bekleme uygulanır.
   - Toplam masa bekleme süresi 120 saniyeye çıkarıldı.

3. Tek sekme korunur.
   - Tek sekme modunda child iframe/OOPIF kapatılmaz.
   - Veri alınırsa veya zaman aşımı olursa collector root sekmesi lobiye geri döner.
   - Amaç sekme kapatmak değil, aynı yan sekmede sıradaki masaya geçmektir.

4. Yanlış/lobi network başarıları azaltıldı.
   - Genel network cevapları sadece history/statistic/result/round benzeri uçlardan gelirse SON500 adayı kabul edilir.
   - Lobi/game-list JSON cevapları masa başarısı sayılmaz.

BEKLENEN DURUM YAZILARI
- SEKMELİ TOPLA: masa kartı tıklandı • ... • sağ-alt SON500 paneli bekleniyor
- SEKMELİ TOPLA: sağ-alt SON500 okunuyor • ... • panel görüldü • bulunan X
- SEKMELİ TOPLA: sağ-alt SON500 paneli kaydedildi • ... • N/500 • minimum bekleme sonrası lobiye dönülecek
- SEKMELİ TOPLA: veri zaman aşımı • tek sekme lobiye dönüyor

NOT
- Program bahis yapmaz.
- Otomatik oyunu başlatmaz.
- Sadece görünen SON500 panelini ve uygun network history cevaplarını okur.
