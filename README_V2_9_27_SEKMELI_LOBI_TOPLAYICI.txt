ROULETTE PRO AI V2.9.27 • SEKMELİ LOBİ TOPLAYICI

AMAÇ
- API/DGA yolu hareket etmiyorsa kullanıcı isteğine uygun ayrı bir toplama yolu eklendi.
- Pragmatic Play rulet lobisi açık kalır.
- Program rulet kartlarını tarar.
- Her masayı sırayla ayrı Chrome sekmesinde açar.
- SON500/statisticHistory verisi gelince o sekmeyi kapatır ve hemen sıradaki masaya geçer.
- Tur bitince 5 dakika sonra otomatik tekrar eder.

YENİ DÜĞME
- VERİ paneline yeni düğme eklendi:
  SEKMELİ LOBİ TOPLA • 5 DK

NASIL ÇALIŞIR
1. Pragmatic Play lobisi açılır.
2. Rulet kategorisi seçilir.
3. Görünen rulet kartları taranır.
4. Kartta href/gameId varsa yeni Chrome sekmesi açılır.
5. Açılan masada tableId ve SON500/statisticHistory beklenir.
6. Veri alınırsa ilgili masa bankasına yazılır.
7. Sekme kapanır.
8. Kuyruktaki sıradaki masa açılır.
9. Lobi sonuna gelince 5 dakika sonra tekrar başlar.

VERİ BİRLEŞTİRME
- Her masadan alınan son 500 sonuç, o masanın önceki son 500 verisiyle karşılaştırılır.
- Sadece yeni gelen spinler uzun arşivin başına eklenir.
- Eski 500 sonuç tekrar canlı veri gibi sayılmaz.

EKRAN DURUMLARI
- SEKMELİ TOPLA: Pragmatic Play lobisi açılıyor
- SEKMELİ TOPLA: Rulet lobisi • ... kart • sekme 1/1 aktif ... kuyruk
- SEKMELİ TOPLA: veri alındı • tableId • sıradaki masaya geçiliyor
- SEKMELİ TOPLA: ... • sekme kapatılıyor
- SEKMELİ TOPLA: lobi sonuna ulaşıldı • ... • 5 dk sonra otomatik tekrar

DURDURMA
- TARAMAYI DURDUR düğmesi sekmeli toplayıcıyı ve otomatik 5 dakika tekrarını kapatır.

NOT
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- Bu mod DGA/API'den bağımsızdır; gerçek lobi/masa ziyaretleriyle veri toplamayı hedefler.
