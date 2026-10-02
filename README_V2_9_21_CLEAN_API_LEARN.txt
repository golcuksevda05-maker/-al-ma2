ROULETTE PRO AI V2.9.21 • TEMİZ API ÖĞREN + ARKA PLAN DURUMU

SORUNLAR
- MASA API ÖĞREN ile yaklaşık 30 masa gezilmesine rağmen yeniden başlatınca
  banka 40 kayıt görünebiliyordu.
- Sebep: öğrenme modunda bazı lobi/catalog yanıtları da toplu masa listesi gibi
  bankaya eklenebiliyordu. Bu, kullanıcının gerçekten tek tek açtığı masa
  sayısıyla bankadaki sayıyı karıştırıyordu.
- KAYITLI MASALARI API'DEN YENİLE sırasında ekranda sadece "6 aktif" görünmesi
  kullanıcıya işlem ilerlemiyor gibi gelebiliyordu.
- Eski ÖĞREN BAŞLAT / ÖĞREN BİTİR / YOLU BAŞLAT bölümü artık gereksizdi.

DÜZELTMELER
1) Temiz MASA API ÖĞREN
- MASA API ÖĞREN artık lobi/catalog toplu keşiflerini bankaya eklemez.
- Yalnız kullanıcının gerçekten açtığı Pragmatic masadan yakalanan tableId/API
  bilgisi bankaya yazılır.
- Böylece kullanıcı 30 masa gezdiyse banka sayısının buna yakın/uyumlu kalması
  hedeflenir.

2) Erken lobi sonu düzeltmesi
- Lobi sonu kararı artık görünür ama henüz denenmemiş kart kalmadığında verilir.
- İlk masadan sonra kart kaldığı halde "lobi sonuna ulaşıldı" demesi engellendi.

3) API yenileme durumu güçlendirildi
- KAYITLI MASALARI API'DEN YENİLE sırasında durum satırı artık OK/HATA sayar:
  API TOPLA: çalışıyor • OK 8 / HATA 1 • 6 aktif • 15 bekliyor
- Tamamlanınca:
  API TOPLA: tamamlandı • OK X / HATA Y • N/N masa denendi

4) Gereksiz ÖĞREN paneli gizlendi
- Ana ekrandaki ÖĞREN BAŞLAT, ÖĞREN BİTİR, YOLU BAŞLAT, SIFIRLA satırı gizlendi.
- CHROME/ÖĞREN bilgilendirme satırları da ana görüntüden kaldırıldı.
- Eski fonksiyonlar kodda uyumluluk için durur ama artık ekranda yer kaplamaz.

ÖNERİLEN AKIŞ
1. MASA API ÖĞREN'e bas.
2. Masaları tek tek kullanıcı olarak aç.
3. Bittiğinde TARAMAYI DURDUR'a bas.
4. Sonrasında KAYITLI MASALARI API'DEN YENİLE ile temiz bankayı arka planda
   toplu güncelle.

NOT
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
