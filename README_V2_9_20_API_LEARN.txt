ROULETTE PRO AI V2.9.20 • MASA API ÖĞREN

SORUN
- Eski taramalardan kalan masa bankası 61 kayıt gösteriyordu; bu sayı gerçek
  canlı masa sayısı gibi anlaşılabiliyordu.
- Lobi taraması ilk masa/veri sonrası "lobi sonuna ulaşıldı" diyerek erken
  durabiliyordu. Görünen başka kartlar kalmasına rağmen stop koşulu erken
  çalışıyordu.
- Kullanıcı, masaları kendisi tek tek açıp programın gerçek tableId/API
  bilgisini temiz şekilde öğrenmesini istedi.

YAPILANLAR
1) Erken durma düzeltildi
- Lobi sonu kararı artık yalnızca:
  * en alta ulaşılmışsa,
  * aktif masa denemesi yoksa,
  * görünür fakat henüz tıklanmamış kart kalmamışsa
  verilir.
- İlk masadan sonra hâlâ görünür kart varsa tarama durmaz.

2) Yeni buton eklendi
- VERİ paneline şu düğme eklendi:
  MASA API ÖĞREN

3) MASA API ÖĞREN ne yapar?
- Görünen masa bankası kayıtlarını sıfırlar. Eski 61 kayıt gibi şüpheli
  bankaları temizler.
- Kullanıcı masaları tarayıcıda tek tek açar.
- Program açılan Pragmatic masaların tableId/API bilgisini yakalar.
- Yakalanan masayı yeni temiz bankaya ekler.
- statisticHistory/SON500 verisi alınabiliyorsa o masanın verisini de kaydeder.

4) API yenileme butonu korunur
- KAYITLI MASALARI API'DEN YENİLE butonu temiz bankadaki öğrenilmiş masaları
  toplu şekilde statisticHistory API üzerinden yeniler.

KULLANIM ÖNERİSİ
1. VERİ panelinde MASA API ÖĞREN'e bas.
2. Program bankayı sıfırlayınca rulet masalarını tarayıcıda sen tek tek aç.
3. Program her açtığın masayı öğrenir.
4. Bitince TARAMAYI DURDUR'a bas.
5. Sonrasında KAYITLI MASALARI API'DEN YENİLE ile öğrendiğin masaları hızlıca
   API'den yenileyebilirsin.

GÜVENLİK
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- Öğrenme yalnız masa kimliği ve statisticHistory/SON500 verisi içindir.
