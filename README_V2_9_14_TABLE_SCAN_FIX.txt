ROULETTE PRO AI V2.9.14 • MASA TARAMA / TANIMA DÜZELTMESİ

SORUN
- PRAGMATIC MASALARI TARA arka planda lobiye giriyor, fakat bazı Pragmatic
  lobi sürümlerinde Rulet kategorisi seçildiği halde buton aktif görünmediği
  için program "Rulet kategorisi seçiliyor" aşamasında takılı kalabiliyordu.
- Lobi kartlarında yalnız data-gameid varsa gerçek statisticHistory tableId
  hemen görünmeyebiliyordu. Bu durumda program kart sayısını artırıyor ama
  gerçek masa ID sayısı net ayrılmıyordu.
- Eski kayıtlı banka sayısı, o anki taramada bulunmuş masa sayısı gibi
  algılanabiliyordu.

DÜZELTME
- Rulet kategori butonu 4 denemeden sonra hâlâ seçili görünmüyorsa tarama
  görünen rulet kartlarıyla devam eder; artık sonsuza kadar kategori seçme
  aşamasında beklemez.
- Kart tanıma daha seçici yapıldı: tile/card/game alanları, data-gameid,
  data-table-id, href ve openGames bilgileri ayrıştırılır. Blackjack, baccarat,
  poker, geçmiş/SON500, bahis/çip gibi alanlar dışarıda bırakılır.
- Gerçek tableId DOM içinde yoksa, kart bağlantısı güvenli şekilde ayrı gizli
  arka plan hedefinde açılır. Bu hedef kullanıcı masasını etkilemez ve bahis
  yapmaz; yalnız Pragmatic ağ isteklerinden gerçek tableId/JSESSIONID şablonunu
  yakalar, sonra kapanır.
- Aynı anda en fazla 2 gizli masa tanıma hedefi açılır. Her hedef kısa sürede
  kapanır; aktif oyun masasıyla karışmaz.
- Tarama durum satırı artık eski banka toplamını ayrı, bu taramada bulunan
  gerçek masa ID sayısını ayrı gösterir:
  "kart / bu taramada X masa ID / banka Y".
- Tarama, gizli masa tanıma hedefleri bitmeden erken "lobi sonu" deyip durmaz.

NOT
- Bu özellik yalnız veri tanıma ve statisticHistory toplama içindir.
- Program casino arayüzünde bahis yapmaz, çip seçmez, spin başlatmaz.
