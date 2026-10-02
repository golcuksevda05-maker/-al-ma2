ROULETTE PRO AI V2.9.36 • SON500 YOKSA ATLA

SORUN
- Toplayıcı artık istenen gibi masaları geziyor ve SON500 verisini kaydediyor.
- Fakat bazı Pragmatic rulet varyantlarında sağ-alt SON500 paneli hiç yok.
- Bu masalarda program gereksiz uzun süre bekleyebiliyordu.

DÜZELTME
1. SON500 paneli olmayan masalar otomatik es geçilir.
   - Masa açıldıktan sonra SON500 sekmesi/paneli hiç görünmezse yaklaşık 18 saniye sonra atlanır.
   - SON500 sekmesi görünüp veri dolmazsa yaklaşık 30 saniye sonra atlanır.
   - Bu masalar hata gibi değil, 'atla' olarak sayılır.

2. Toplayıcı sıradaki masaya devam eder.
   - Atlanan masada bekleme kilidi temizlenir.
   - Oyun içi Lobi düğmesiyle lobiye dönülür.
   - Sıradaki masaya hızlıca geçilir.

3. Durum satırında ayrı sayaç eklendi.
   - Önceden: tamam X OK Y hata Z
   - Yeni: tamam X OK Y atla S hata Z

BEKLENEN DURUM YAZILARI
- SEKMELİ TOPLA: sağ-alt SON500 okunuyor • ... • masa paneli bekleniyor • bulunan 0
- SEKMELİ TOPLA: SON500 yok • ... • es geçiliyor
- SEKMELİ TOPLA: SON500 yok • es geçildi • oyun içi Lobi düğmesine basılıyor
- SEKMELİ TOPLA: Rulet lobisi • ... • tamam X OK Y atla S hata Z

NOT
- SON500 bulunan masalar eskisi gibi kaydedilir.
- SON500 bulunmayan masalar taramayı durdurmaz.
- Tur bitince 5 dakika sonra tekrar edilir; SON500 destekleyen masalarda yeni spinler arşive eklenmeye devam eder.
