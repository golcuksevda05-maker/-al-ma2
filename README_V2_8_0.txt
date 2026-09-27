ROULETTE PRO AI V2.8.0 • CANLI GEÇMİŞ KİLİDİ

V2.7.9'DA BULUNAN GERÇEK HATA
Ekranın altında:
Kaynak: SON500 canlı senkron
göründüğünde SON500 yedeği uygulamanın SON SAYI / SON20 geçmişini yeniden
yazabiliyordu.

SON500 bazı Pragmatic ekranlarında canlı DOM ile aynı sırada dönmediği için:
1) uygulama önce doğru sayıyı gösteriyor
2) birkaç saniye sonra SON500 taraması geliyor
3) SON20 tamamen farklı sayılara dönüşebiliyordu

V2.8.0 DÜZELTMESİ

1. SON500 LIVE YAZMA KAPALI
SON500 artık yalnız:
- masa SON500 kaynağı
- uzun masa arşivi
- kaynak laboratuvarı
- model araştırması
için kullanılır.

SON500, SON SAYI veya SON20'yi ASLA değiştiremez.

2. LIVE HISTORY LOCK
update_results artık mevcut canlı geçmişle süreklilik kanıtlayamayan hiçbir
kaynağın history'yi değiştirmesine izin vermez.

Kabul edilir:
YENİ: 7,12,33,32,... 
ESKİ:   12,33,32,...
=> +1 yeni spin kanıtlandı.

Reddedilir:
YENİ: 21,9,14,3,30,...
ESKİ: 12,33,32,33,6,...
=> ortak süreklilik yok; SON20 değişmez.

3. DOM TEK CANLI OTORİTE
Canlı SON SAYI/SON20 yalnız:
DOM canlı kilitli
veya
DOM canlı kilitli +1
şeklinde güncellenir.

4. VERİ EKRANI
CANLI SYNC: DOM canlı kilitli
SON500 LIVE YAZMA: KAPALI

satırları görünür.

5. KAYNAK LAB KORUNDU
CANLI / SON500 / UZUN / RECENCY / WHEEL / TRANSITION / LONG-M kaynakları
ayrı ayrı ölçülmeye devam eder. Sadece SON500'ün canlı ekran geçmişini
değiştirme yetkisi kaldırıldı.

TESTLER
- gerçek +1 spin sürekliliği: OK
- ilgisiz SON20 reddi: OK
- stale DOM geriye sarma engeli: OK
- SON500 -> update_results yolu yok: OK
- self-test: OK

ÇALIŞTIR:
BASLAT_ROULETTE_V2_8_0_LIVE_LOCK.bat
