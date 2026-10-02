ROULETTE PRO AI V2.9.38 • SON500 ANINDA ATLA

SORUN
- Bazı masalarda sağ-alt SON500 paneli hiç yok.
- V2.9.37 bunu es geçmeye çalışıyordu, fakat bazı oyunlarda program masayı yanlışlıkla 'Rulet lobisi' gibi algılayabiliyordu.
- Bu yüzden gerçek masadayken 'SON500 yok' kararını hemen veremeyip bekleyebiliyordu.

DÜZELTME
1. Gerçek oyun masası artık ayrıca algılanıyor.
   - Sağ üstte oyun içi Lobi düğmesi varsa,
   - ekranda bahis/masa alanı varsa,
   - ama SON 500 / LAST 500 düğmesi veya paneli yoksa,
   program bunu 'SON500 olmayan aktif masa' olarak işaretler.

2. SON500 olmayan aktif masa anında atlanır.
   - Masa artık Rulet lobisi sanılmaz.
   - Atla sayacına eklenir.
   - Bekleme kilidi temizlenir.
   - Oyun içi Lobi düğmesine basılır.
   - Sıradaki masaya geçilir.

3. Bekleme süreleri kısaltıldı.
   - SON500 paneli hiç yoksa: yaklaşık 6 saniye içinde atla.
   - SON500 sekmesi var ama veri dolmuyorsa: yaklaşık 12 saniye içinde atla.

BEKLENEN DURUM YAZILARI
- SEKMELİ TOPLA: SON500 paneli yok • ... • anında es geçiliyor
- SEKMELİ TOPLA: SON500 paneli yok • es geçildi • oyun içi Lobi düğmesine basılıyor
- SEKMELİ TOPLA: Rulet lobisi • ... • OK X atla Y hata Z

500 SPİNİN ÇEKİLDİĞİNİ NASIL GÖRÜRSÜN?
- VERİ DURUMU alanında:
  PRAGMATIC DIRECT: 500/500
  PRAGMATIC statisticHistory network: 500/500
  UZUN MASA ARŞİVİ: 500+

- MASA BANKALARINI GÖR düğmesinde:
  masa adı, kaynak, güncellik ve spin sayısı görünür.

- Veri dosyalarında:
  table_history500_<masa>.json = son görünen 500 spin
  table_long_archive_<masa>.json = üstüne eklenen uzun arşiv

NOT
- SON500 olmayan masalar hata değildir; 'atla' sayılır.
- SON500 olan masalarda veri kaydı aynı şekilde devam eder.
