ROULETTE PRO AI V2.7.6 • WALK-FORWARD PERFORMANCE GATE

NEDEN
Adaylar ekranda görünse de gerçek performans rastgele Top-5 tabanını (%13.51)
geçmiyorsa model artık yüksek güven / OYNA sinyali vermez.

YENİ WALK-FORWARD TEST
- Sadece aktif tableId'nin UZUN MASA ARŞİVİNİ kullanır.
- Geçmiş kronolojik yürütülür.
- Her test turunda model sadece o turdan ÖNCEKİ sonuçları görür.
- Gelecek sonuç eğitim verisine sızmaz.
- En yeni 220 out-of-sample tahmin test edilir (en az 120 eğitim spininden sonra).

TEST EDİLEN ALT MODELLER
R = RECENCY
W = WHEEL
T = TRANSITION
L = SAME-TABLE LONG HISTORY

Her alt modelin gerçek Top-5 isabeti ölçülür.
Walk-forward ağırlıkları sadece daha önce test edilmiş sonuçlardan öğrenilir.
Kötü modelin ağırlığı düşer; kısa şans serilerinin modeli ele geçirmesi engellenir.

EDGE KURALI
Top-5 rastgele tabanı = 5/37 = %13.51.
EDGE VAR diyebilmek için:
- en az 120 walk-forward test turu
- Top-5 oranı tabandan en az +1.5 puan yüksek
- tek taraflı yaklaşık %90 Wilson alt sınırı da %13.51'in üstünde
olmalıdır.

Bu koşul yoksa:
HAMLE: PAS
Karar nedeni: model avantaj göstermiyor

Adaylar yine araştırma/test amacıyla ekranda kalır ama:
YAN ADAYLAR yerine TEST ADAYLARI yazar.

MODEL SİNYALİ
Walk-forward olgunlaşıp EDGE göstermiyorsa sinyal en fazla %34 gösterilir.
Böylece düşük gerçek performansa rağmen %80-%90 gibi yanıltıcı skor görünmez.

PERFORMANS PANELİ
Yeni satır:
WALK-FORWARD 220: Top5 %... • taban %13.5 • alt90 %... • edge ...p • EDGE VAR/YOK
Alt modeller: R ... W ... T ... L ...

V2.7.5'TEKİ VERİ TEMİZLİĞİ KORUNUR
- ortak gecmis_*.txt modelde kapalı
- tableId bankaları ayrı
- hidden masalar sadece kendi bankasını büyütür
- aktif tahmin yalnız aktif tableId verisiyle çalışır

ÖNEMLİ
Bu sistem rulet sonucunu garanti etmez. Ama modelin gerçek out-of-sample performansı
rastgele tabanı geçmiyorsa bunu açıkça PAS olarak gösterir ve zayıf modelleri
otomatik olarak azaltır.

ÇALIŞTIR
BASLAT_ROULETTE_V2_7_6_PERFORMANCE_GATE.bat
