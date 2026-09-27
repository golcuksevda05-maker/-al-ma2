ROULETTE PRO AI V2.8.5 • KOMŞU İSTATİSTİK

YENİ SEKME: KOMŞU

SENARYO
Her turda şu oyun varsayılır:
- NET sayı + 2 komşu
- 4 YEDEK sayının her biri + 2 komşu

Her merkez için Avrupa rulet çarkındaki 5 sayı izlenir:
2 sol komşu + merkez + 2 sağ komşu.

KOMŞU SONUÇLARI
NET K2 ✓
  Gerçek sonuç NET sayının +2 komşu bölgesinde.

YEDEK K2 ✓
  NET bölgesi tutmadı; en az bir YEDEK +2 komşu bölgesi tuttu.

DIŞI
  Gerçek sonuç hiçbir izlenen +2 komşu bölgesinde değil.

ÇOKLU
  Aynı gerçek sonuç birden fazla merkez bölgesine denk gelirse gösterilir.

İSTATİSTİK
- NET K2 hit oranı
- YEDEK K2 hit oranı
- HERHANGİ K2 toplam hit oranı
- ÇOKLU bölge sayısı
- Ortalama benzersiz KAPSAM /37
- KAPSAM TABANI

KAPSAM TABANI neden var?
5 merkez x 5 sayı = 25 konum gibi görünür; ancak bölgeler üst üste binebilir.
Program her turda gerçek benzersiz sayı sayısını hesaplar.
Örneğin yalnız 14 benzersiz sayı kapsanıyorsa teorik rastgele kapsama yaklaşık
14/37 = %37.8'dir. Bu, komşu hit oranını daha doğru yorumlamayı sağlar.

KOMŞU GEÇMİŞİ
GEÇMİŞ sekmesi gibi 01 -> 12 kronolojik seri vardır.
13. gerçek sonuçta yeni seri 01 olur.

Örnek:
01 | N 32 K2 | Y 15/21/07/19 K2 | ÇIKAN 34 | NET K2 ✓ | K 19/37

TEMİZLE
KOMŞU sekmesindeki TEMİZLE yalnız görünen 01-12 satırını temizler.
Kalıcı komşu toplam istatistiğini, model öğrenmesini, kaynak performansını,
SON500 veya tableId arşivlerini silmez.

KALICILIK
Komşu toplam istatistikleri aynı tableId'nin learning dosyasında saklanır.

V2.8.4 EXACT FAMILY, canlı sync, PUANLAMA: OK ve diğer masa izolasyon özellikleri
korunmuştur.

NOT
Bu sürüm isabet/kapsama istatistiği verir, kâr-zarar hesabı yapmaz.
Çip tutarı ve örtüşen sayılara iki kez bahis yapılıp yapılmadığı bilinmeden
doğru net kâr hesabı yapılamaz.

ÇALIŞTIR
BASLAT_ROULETTE_V2_8_5_KOMSU_ISTATISTIK.bat
