ROULETTE PRO AI V2.9.11 • REPLAY HOTFIX

KÖK NEDEN BULUNDU
V2.9.10'da öğrenilen yolu katı sıraya çevirirken üretilen tarayıcı
JavaScript'inde eski for-loop'tan kalan `continue` ifadeleri kalmıştı.

Kod artık for-loop içinde olmadığı için Chrome replay scriptini syntax
hatasıyla hiç çalıştırmıyordu. Bu nedenle:
CHROME: BAĞLI ✓
ÖĞREN: YOL BAŞLIYOR • 0/21
görünmesine rağmen ilk adım hiç başlamıyordu.

V2.9.11 DÜZELTMELERİ
- Illegal continue hatası tamamen kaldırıldı.
- Generated replay JavaScript Node.js ile syntax-check edilerek paketlendi.
- Tıkla + Yaz + Kaydır sırası korunur.
- Sıradaki öğe bulunamazsa ekranda:
  ARIYOR: TIKLA: CANLI CASINO
  benzeri açıklama görünür.
- Runtime.evaluate JavaScript hataları artık sessizce yutulmaz;
  REPLAY JS HATASI olarak ekrana gelir.
- Görünür öğe eşleşmesi önce denenir, sonra aynı öğrenilmiş DOM öğesi
  için kontrollü görünürlük fallback'i uygulanır.

ÖNEMLİ
Yeniden öğretmene gerek yok.
Aynı kayıt dosyası korunur:
%LOCALAPPDATA%\PragmaticRouletteTracker\lobby_teach_actions_v5.json

TAHMİN TARAFI
NET sayı, AKIŞ/TABLO/ÇARK, K1/K2, yedekler, LOCKED LIVE ve puanlama
formülleri değiştirilmedi.

ÇALIŞTIR
BASLAT_ROULETTE_V2_9_11_REPLAY_FIX.bat
