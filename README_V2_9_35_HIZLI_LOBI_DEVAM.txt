ROULETTE PRO AI V2.9.35 • HIZLI LOBİ DEVAM

SORUN
- V2.9.34 ile veri çekildikten sonra oyun içi Lobi düğmesine dönme çalıştı.
- Fakat Pragmatic Rulet lobisine dönünce bazı kart/önizleme network istekleri tekrar tableId üretiyordu.
- Program bunu yeni açılmış masa sanıp sağ-alt SON500 paneli beklemeye geçebiliyor ve lobide 'bulunan 0' durumunda kalabiliyordu.
- Ayrıca masa geçişleri daha hızlı olsun istendi.

DÜZELTME
1. Pragmatic Rulet lobisine dönüldüğü algılanıyor.
   - Ekranda tekrar birden çok Rulet masa kartı görünürse program bunun oyun lobisi olduğunu anlar.
   - Eski masa bekleme kilidi temizlenir.
   - Durum: 'Pragmatic Rulet lobisine dönüldü • ... kart • sıradaki masa seçiliyor'

2. Lobi önizleme/tableId istekleri masa açıldı sanılmıyor.
   - Collector lobideyken gelen stale/lobby-preview tableId trafiği sağ-alt SON500 beklemesini tekrar başlatmaz.
   - Bu, 'sağ-alt SON500 okunuyor • Roulette • masa paneli bekleniyor • bulunan 0' takılmasını azaltır.

3. Masa geçişleri hızlandırıldı.
   - Veri geldikten sonraki minimum masa beklemesi 12 sn yerine 4 sn.
   - Lobiye dönünce sıradaki kart tıklama gecikmesi 2.5 sn yerine yaklaşık 0.7 sn.
   - Collector nav tarama aralığı tek sekme modunda 2 sn yerine yaklaşık 0.8 sn.

4. Görünen isim temizliği yapıldı.
   - Masa adı yerine 'https://client...' gibi teknik URL görünmesi engellendi.

BEKLENEN AKIŞ
1. Masa kartı tıklanır.
2. Sağ-alt SON500 paneli okunur ve kaydedilir.
3. Oyun içi Lobi düğmesi tıklanır.
4. Pragmatic Rulet lobisi algılanır.
5. Bekleme kilidi temizlenir.
6. Sıradaki masa hızlıca tıklanır.
7. Tur bitince 5 dakika sonra tekrar edilir ve yeni spinler arşive eklenir.
