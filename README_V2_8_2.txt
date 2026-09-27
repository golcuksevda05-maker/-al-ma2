ROULETTE PRO AI V2.8.2 • SKOR + CANLI SYNC

KRİTİK HATA DÜZELTİLDİ
Kaynak Laboratuvarı _score_pending kodunda `consensus`, tanımlanmadan önce
kullanılıyordu. Yeni gerçek sayı geldiğinde NameError oluşup işlem yarıda
kalabiliyordu.

Bu yüzden:
- SON SAYI ilerlemeyebiliyordu
- DOM yeni sonucu görse bile history güncellenmeyebiliyordu
- doğrulanmış SON500 catch-up yarıda kalabiliyordu
- GEÇMİŞ kıyasına yeni satır düşmeyebiliyordu

V2.8.2:
- consensus kaynak kıyasından önce alınır.
- canlı güncelleme _safe_score_pending kullanır.
- ileride puanlama tarafında bir hata olsa bile canlı SON SAYI ilerler.
- VERİ sekmesinde PUANLAMA: OK görünür.

FOTOĞRAFTAKİ SENARYO
Oyun SON500:
31 02 15 23 21 26 ...

Uygulama:
15 23 21 26 ...

31 ve 02 eksik olduğu kesin ardışık eşleşmeyle doğrulanır ve tamamlanabilir.

GEÇMİŞ KARŞILAŞTIRMASI
Ekrandaki kıyas listesi artık model öğrenmesinden AYRIDIR.

- 01 -> 12 kronolojik gider.
- 12 satır ekranda kalır.
- 13. gerçek sonuç geldiğinde yeni seri 01 olur.
- Küçük TEMİZLE butonu vardır.
- TEMİZLE yalnız ekrandaki listeyi siler.

TEMİZLE ŞUNLARI SİLMEZ:
- validation/performance
- kaynak başarı istatistikleri
- öğrenme
- SON500
- uzun masa arşivi
- tableId bankası

Dolayısıyla ekrandaki eski çıkan sayılar tahmin girdisi değildir.

ÇALIŞTIR:
BASLAT_ROULETTE_V2_8_2_SCORE_SYNC.bat
