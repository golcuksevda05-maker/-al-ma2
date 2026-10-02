ROULETTE PRO AI V2.9.28 • LOBİ KARTI + SEKMELİ TOPLAYICI

AMAÇ
- Kullanıcının ekran görüntüsündeki akışa göre Pragmatic Play Lobby artık site aramasındaki karttan açılır.
- Program searchTerm=pragmatic play lobby sayfasını açar.
- Sayfada Pragmatic Play Lobby kartını bulur.
- Kartın üstüne hover/mouseover yapar ve Oyna/Play düğmesine basar.
- Açılan gerçek Pragmatic Play Lobby içinde Rulet bölümünü/rulet masalarını tarar.
- data-testid="wow-tile" ve data-gameid olan rulet kartlarını da tanır.
- SEKMELİ LOBİ TOPLA modu her masayı ayrı Chrome sekmesinde açar, SON500/statisticHistory alır, sekmeyi kapatır ve sıradaki masaya geçer.
- Tur bitince 5 dakika sonra otomatik tekrar eder.

NEDEN GEREKTİ
- Önceki URL'de openGames parametresiyle direkt lobi açmaya çalışıyordu.
- Kullanıcının sitesinde doğru giriş yolu: site aramasındaki Pragmatic Play Lobby kartı -> Oyna.
- Bu sürüm openGames parametresini kaldırdı ve kart/Oyna tıklama akışını ekledi.

YENİ AKIŞ
1. SEKMELİ LOBİ TOPLA • 5 DK düğmesine basılır.
2. Site arama sayfası açılır: pragmatic play lobby.
3. Pragmatic Play Lobby kartı bulunur.
4. Oyna/Play düğmesi tıklanır.
5. Pragmatic lobby içinde Rulet seçilir veya Rulet sayfası algılanır.
6. Rulet masaları data-gameid ile kuyruğa alınır.
7. Sırayla tek sekme açılır, veri beklenir, sekme kapatılır.
8. 5 dakika sonra tur tekrar başlar.

EKRAN DURUMLARI
- SEKMELİ TOPLA: site aramasındaki Pragmatic Play Lobby kartında Oyna tıklandı
- SEKMELİ TOPLA: arama kutusuna pragmatic play lobby yazıldı
- SEKMELİ TOPLA: Rulet kategorisi seçildi • masa listesi yükleniyor
- SEKMELİ TOPLA: Rulet lobisi • ... kart • sekme 1/1 aktif ... kuyruk
- SEKMELİ TOPLA: veri alındı • tableId • sıradaki masaya geçiliyor

NOT
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- Yalnızca Pragmatic Play Lobby kartını ve rulet masa kartlarını tıklar.
