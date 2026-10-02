ROULETTE PRO AI V2.9.43 • AI KARAR MOTORU

AMAÇ
- Program zaten NET sayı, yedekler, bölge, aile, SON500, uzun arşiv ve kaynak performansı üretiyordu.
- Bu sürüm bunların üstüne yerel çalışan bir AI karar katmanı ekler.
- AI tek başına kesin sayı bilmez; mevcut veriyi daha seçici tartar ve zayıf sinyale BEKLE diyebilir.

YENİ AI PANELİ
Ana ekranda artık şu satır görünür:

AI KARAR: OYNA / KONTROLLÜ / İZLE / BEKLE / VERİ BEKLE / MASA DEĞİŞTİR
GÜVEN: %...
RİSK: DÜŞÜK / ORTA / YÜKSEK
PAKET: 1K / 2K / BEKLE

Örnek:
AI KARAR: KONTROLLÜ • GÜVEN %68 • RİSK ORTA • PAKET 1K
masa verisi güçlü • aile desteği AKIŞ+TABLO • WF edge +2.1p

AI NEYE BAKIYOR?
1. Masa veri kalitesi
   - SON500 sayısı
   - Uzun masa arşivi
   - canlı SON20
   - kayıtlı masa bankası

2. Kaynak/aile uyumu
   - AKIŞ ailesi
   - TABLO ailesi
   - ÇARK ailesi
   - aileler aynı sayıyı destekliyor mu, çelişiyor mu

3. Gerçek performans
   - toplam doğrulama
   - son 20 tur performansı
   - NET / Top5 / komşu / bölge başarıları

4. Walk-forward kontrolü
   - uzun arşiv üstünde geçmişe dönük kör test
   - edge var mı yok mu

5. Locked Live 500 ve risk/EV
   - K1/K2 paketi gerçekten tabanı geçiyor mu
   - düz sayı 35:1 risk matematiği

6. Zayıflayan kaynak kapısı
   - son dönemde kötüleşen kaynaklar AI skorunu düşürür

7. AI kendi onaylarını öğrenir
   - AI OYNA/KONTROLLÜ dediği turlar sonraki sonuçla puanlanır
   - onaylı turlar zayıflarsa AI sonraki onayları daha zor verir
   - BEKLE dediği turlar güçlü çıkıyorsa AI kendini biraz gevşetir

KARARLARIN ANLAMI
- OYNA: Kaynak uyumu, veri kalitesi ve risk filtresi güçlü.
- KONTROLLÜ: Sinyal var ama tam güçlü değil; daha temkinli.
- İZLE: Tahmin var ama AI henüz girmek istemiyor.
- BEKLE: Sinyal zayıf/çelişkili.
- VERİ BEKLE: Masa verisi yetersiz.
- MASA DEĞİŞTİR: Masa veri kalitesi çok zayıf ve AI skoru düşük.

ÖNEMLİ NOT
- AI güven yüzdesi gerçek rulet olasılığı değildir; karar gücü/skoru olarak gösterilir.
- Hiçbir AI rulette kesin kazanç garantisi vermez.
- Bu sürümün amacı daha az zayıf sinyal, daha iyi bekle/oyna filtresi ve daha iyi risk yönetimidir.

KORUNAN DÜZELTMELER
- V2.9.42 lobi bitti düzeltmesi korunur.
- V2.9.41 SON500 paneli görünürken masa kilidi korunur.
- PowerUp Rulet / Sıcak & Soğuk-only masalar atlanır.
- SON500 olmayan masalar hata değil, atla sayılır.
