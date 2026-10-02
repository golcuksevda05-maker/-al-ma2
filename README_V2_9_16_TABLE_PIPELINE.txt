ROULETTE PRO AI V2.9.16 • MASA SEKME HATTI

KULLANICI İSTEĞİ
- Masa taraması sırasında lobi sayfası kullanıcı yukarı kaydırınca programın
  tekrar aşağı çekmemesi.
- Görünen masalar için kontrollü şekilde yeni sekmeler açılması.
- İlk görünen satırdan birkaç masa aynı anda denenmesi; bir masa tanınınca ve
  SON500/statisticHistory için gerekli tableId yakalanınca sekme hattının daha
  düşük eşzamanlı sayıda devam etmesi.

YAPILAN DÜZELTME
- Otomatik aşağı kaydırma artık lobi dibine ilk kez ulaştıktan sonra durur.
  Kullanıcı fareyle yukarı kaydırırsa program tekrar zorla aşağı çekmez.
- Güvenli sekme hattı eklendi:
  * İlk aşamada en fazla 4 görünür masa sekmesi açılır.
  * İlk gerçek tableId yakalandıktan sonra hat en fazla 2 aktif sekme ile devam eder.
  * Bir sekme tableId/JSESSIONID şablonunu yakaladıktan kısa süre sonra kapanır.
  * Bir sekme uzun süre veri vermezse zaman aşımıyla kapanır.
- Direkt provider/games.* URL'leri tercih edilmez; mümkünse operatör wrapper
  URL'si üzerinden openGames bağlantısı oluşturulur. Bu, siyah Pragmatic splash
  ekranında kalma riskini azaltır.
- Durum satırı artık sekme hattını gösterir:
  "sekme hattı A/B aktif C bekliyor"

GÜVENLİK / SINIRLAR
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- Açılan sekmeler yalnız masa kimliği ve statisticHistory/SON500 verisi için
  kullanılır.
- Aktif kullanıcının açık masasındaki tahmin/history ile arka plan masa verisi
  karıştırılmaz.

KONTROL
- Program üst başlığında V2.9.16 TABLE PIPE yazmalı.
- MASA TARAMA satırında "sekme hattı" ifadesi görünmeli.
