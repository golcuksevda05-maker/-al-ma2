ROULETTE PRO AI V2.9.25 • CHROME RUNTIME DGA

SORUN
- V2.9.24'te DGA canlı feed Python üzerinden wss://dga.pragmaticplaylive.net/ws adresine bağlanmayı denedi.
- Kullanıcı ekranında bağlantı hatası: ConnectionResetError görüldü.
- Bu, operatörün/Pragmatic ağının doğrudan Python WebSocket bağlantısını resetlediğini gösterir.

YENİ ÇÖZÜM
- DGA WebSocket artık öncelikle Python'dan değil, Chrome'un açık Pragmatic sayfasının Runtime context'i içinde açılır.
- Böylece istek Chrome tarayıcısının origin/context bilgisiyle gider.
- Eski statisticHistory API ve lobi kartı tıklama döngüsü ana yol olmaktan çıkarıldı.

NASIL ÇALIŞIR
1. Bankadaki tableId kayıtları alınır.
2. Program aktif Pragmatic/rulet Chrome context'ini seçer.
3. O context içinde JavaScript ile WebSocket açılır:
   wss://dga.pragmaticplaylive.net/ws
4. Her masa tek tek subscribe edilir.
5. Gelen DGA mesajları Python tarafında ayrıştırılır.
6. last20Results içeren masalar kendi uzun arşivine eklenir.
7. Aynı pencere tekrar canlı sonuç gibi sayılmaz.

EKRAN DURUMLARI
- CHROME DGA: Chrome içinde websocket açılıyor • X masa
- CHROME DGA: başlatıldı • X masa • casino ... • TRY
- CHROME DGA: open • X/Y abonelik • Z frame • veri bekliyor
- DGA CANLI: Chrome feed veri aldı • masa adı
- CHROME DGA: closed/error • yeniden deneniyor

EK DÜZELTME
- Python fallback DGA yolu artık büyük toplu key listesi göndermiyor.
- Her masa için ayrı subscribe frame gönderiliyor; bu da ConnectionResetError riskini azaltır.

KULLANIM
1. Chrome'da bir Pragmatic rulet masası veya Pragmatic lobi açık olsun.
2. Programda şu düğmeye bas:
   KAYITLI MASALARI DGA CANLI YENİLE
   veya
   DGA CANLI / MASALARI TARA
3. Artık beklenen ana durum CHROME DGA satırıdır.
4. Durdurmak için TARAMAYI DURDUR kullan.

NOT
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- Bu sürüm bağlantıyı Chrome içinden kurarak V2.9.24'te görülen ConnectionResetError sorununu aşmayı hedefler.
