ROULETTE PRO AI V2.9 • FINAL CORE

AMAÇ
Yeni ağır özellik eklemeden mevcut V2.8.12 çekirdeğini daha temiz ölçmek ve
NET seçiminde son dönemde bozulan kaynakların etkisini sınırlamak.

KORUNANLAR
- NET sayı + 4 yedek
- AKIŞ / TABLO / ÇARK aileleri
- Exact Family
- 1 KOMŞU / 2 KOMŞU istatistik
- 1K / 2K Flaş Auto Sync
- SON500 doğrulanmış catch-up
- tableId bazlı ayrı bankalar
- walk-forward

YENİ 1: LOCKED LIVE 500
V2.9 kurulduktan sonraki gerçek tahminler sonuç gelmeden önce kilitlenir.
Eski turlar geriye dönük eklenmez. İlk 500 gerçek tur ayrı tutulur ve 500'de donar.

Raporlar:
- NET exact
- TOP5
- K1 gerçek / kendi kapsama tabanı / EDGE
- K2 gerçek / kendi kapsama tabanı / EDGE
- son 50 / 100 / 200 K1-K2 EDGE

YENİ 2: HAFİF DRIFT / GATING
Kaynaklar hâlâ Exact/TAM başarısına göre değerlendirilir.
Son 100 exact profili kendi uzun dönem profiline göre belirgin bozulursa kaynak
ağırlığı sınırlanır. Bu mekanizma 60 recent turdan önce devreye girmez.

Durumlar:
STABİL x1.00
TEMKİNLİ x0.86
ZAYIFLIYOR x0.72
GÜÇLÜ x1.08

Bu gate yeni bir tahmin kaynağı değildir; yalnız mevcut kaynağın etkisini sınırlar.

YENİ 3: NET SİNYAL
Ana ekranda NET SİNYAL % gösterilir. Bu değer gerçek rulet olasılığı değildir.
Aile desteği + seçim marjı + kaynak olgunluğunu gösteren göreli sinyal puanıdır.

ÖNEMLİ
Rulette garanti sayı yoktur. V2.9'un amacı geçmiş performansı güzelleştirmek değil,
yeni ve kilitli turlarda modelin gerçekten tabanı geçip geçmediğini ölçmektir.

ÇALIŞTIR
BASLAT_ROULETTE_V2_9_FINAL_CORE.bat
