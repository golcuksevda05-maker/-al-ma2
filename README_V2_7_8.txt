ROULETTE PRO AI V2.7.8 • KAYNAK LABORATUVARI

AMAÇ
Bu sürüm OYNA / PAS kararı üretmek yerine veri toplar.
"USTA KARARI" üst bölümden kaldırıldı.

ÜST PANEL
KAYNAK CEVAPLARI
CANLI xx • SON500 xx • UZUN xx
ORTAK ADAY xx
ORTAK ADAYLAR xx/xx/xx/xx
KAYNAK UYUMU x/3

KAYNAKLAR SEKMESİ
Her turda ayrı ayrı cevap verir:
- CANLI
- SON500
- UZUN
- RECENCY
- WHEEL
- TRANSITION
- LONG-M

Her biri için:
- ana cevap
- Top5
- geçmiş tur sayısı
- TAM isabet %
- Top5 isabet %
saklanır ve gösterilir.

HER YENİ SPİNDE
Çıkan sayı geldikten sonra her kaynak/model ayrı puanlanır:
TAM  = kaynağın 1. adayı çıktı
TOP5 = kaynağın ilk 5 adayı içinde çıktı
DIŞI = ilk 5 dışında kaldı

GEÇMİŞ
Örnek:
01 | ORTAK 21 | ADAY 20/17/18/02 | ÇIKAN 14 | DIŞI • K:TAM C • K:T5 500

Kısaltmalar:
C   = CANLI
500 = SON500
U   = UZUN
R   = RECENCY
W   = WHEEL
T   = TRANSITION
L   = LONG-M

Böylece birkaç yüz tur sonra hangi kaynak/modelin gerçekten tabanı aştığını
ayrı ayrı ölçebiliriz.

Rastgele teorik taban:
- tek sayı: %2.70
- Top5: %13.51

MASA İZOLASYONU
Tüm performans ve öğrenme aynı tableId'ye özeldir.
Başka masalar aktif masanın sonuçlarına karışmaz.

V2.7.7 tahmin geçmişi, V2.7.6 walk-forward ve V2.7.5 table-bank altyapısı korunur.
Walk-forward artık karar kapısı değil, PERFORMANS sekmesindeki araştırma ölçümüdür.

ÇALIŞTIR
BASLAT_ROULETTE_V2_7_8_KAYNAK_LAB.bat
