ROULETTE PRO AI V2.8.10 • FLAŞÖR FIX

DÜZELTİLEN ÖRNEK:
28 için 1 KOMŞU = 7 / 28 / 12

Sorun formülde değildi. V2.8.9'da bazı Pragmatic sayı etiketleri
görsel olarak racetrack içinde olmasına rağmen farklı bir DOM dalında
olduğu için flaşör tek bir sayıyı kaçırabiliyordu.

V2.8.10:
- DOM parent kontrolüne ek olarak EKRAN KONUMU ile racetrack eşleştirme
- SVG text / tspan sayı desteği
- Tek haneli dar sayı kutularında daha geniş tolerans
- History/chat yerine racetrack'e en yakın sayı kopyasını tercih etme
- Üst rozet:
  İŞARETLİ x
  TAM ✓
  veya EKSİK: 7/... gösterir

TEST:
28 K1 = 7 / 28 / 12 -> OK

Otomatik bahis / otomatik tıklama yoktur.
Sadece görsel flaşör.

ÇALIŞTIR:
BASLAT_ROULETTE_V2_8_10_FLASOR_FIX.bat
