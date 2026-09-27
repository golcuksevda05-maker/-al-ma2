ROULETTE PRO AI V2.9.13 • RİSK / EV PANELİ

AMAÇ
- Tahmin modelinin yanında gerçek rulet ödeme matematiğini ayrı gösterir.
- NET, NET+YEDEK TOP5, K1 ve K2 paketleri için kapsama, rastgele taban,
  başabaş hit oranı, gerçekleşen hit oranı, Wilson alt90 ve canlı ROI izlenir.
- Bu panel model skoru ile gerçek olasılığı karıştırmamak için eklenmiştir.

EKLENEN METRİKLER
- Rastgele taban: kapsam / 37.
- Başabaş oranı: kapsam / 36. Çünkü düz sayı bahisinde kazanan sayı net 35:1
  öder; N sayı kapatıldığında turun net sonucu hit varsa 36-N, hit yoksa -N'dir.
- Teorik uzun vade ROI: Avrupa ruletinde düz sayı için her kapalı sayı başına
  yaklaşık -%2.70.
- Canlı ROI: doğrulanmış turlarda gerçekleşen hit ve gerçek kapsama üzerinden
  hesaplanır.
- Wilson alt90: kısa serilerde şanslı yükselişi abartmamak için tek taraflı
  yaklaşık %90 alt güven sınırı.

YORUM
- KANITLI ARTI: Alt90 başabaş oranının üstüne çıkmış ve yeterli örnek vardır.
- ARTI AMA ERKEN: Görünen oran başabaş üstünde, fakat alt sınır henüz güvenli
  değil.
- BAŞABAŞ ALTI / TABAN ALTI: Paket matematiksel olarak kâr eşiğinin altında.
- Bu panel garanti kazanç iddiası değildir; yalnızca risk ve performans
  takibini daha şeffaf yapar.

ÇALIŞTIRMA
- Mevcut BAT dosyası aynı kalır:
  BASLAT_ROULETTE_V2_9_12_MULTI_TABLE_COLLECTOR.bat
- Program başlığı V2.9.13 RISK+EV olarak görünür.
