ROULETTE PRO AI V2.9.15 • GÜVENLİ MASA TARAMA

SORUN
- V2.9.14'te tableId görünmeyen rulet kartlarını tanımak için kısa süreli gizli
  arka plan hedefi açılıyordu.
- Bazı sitelerde bu hedefler Chrome'da Pragmatic Play Lobby sekmesi olarak
  görünür hale geliyor ve siyah Pragmatic Play açılış ekranında kalabiliyordu.
- Ekranda "giriş deneme aktif/bekliyor" görünüyor, kullanıcı da programın
  hâlâ masa varmış gibi saymaya devam ettiğini düşünüyordu.

DÜZELTME
- Gizli kart açma / giriş deneme modu varsayılan olarak kapatıldı.
- Program artık tarama sırasında ekstra Pragmatic Play Lobby sekmeleri açmaz.
- data-gameid'den sentetik openGames bağlantısı üretme kaldırıldı.
- Tarama yalnız görünür lobi DOM bilgisi, lobi/ağ yanıtları ve gerçek
  statisticHistory şablonlarıyla masa kimliği arar.
- Durum metni daha net hale getirildi:
  "kart / bu taramada X gerçek masa ID / kayıtlı banka Y"
- Kayıtlı masa bankası artık "aktif masa" gibi gösterilmez; "kayıt" ve
  "son 5dk güncel" olarak ayrılır.

KULLANIM
- Güncellemeden sonra açık kalmış eski siyah Pragmatic Play Lobby sekmeleri
  varsa bir defaya mahsus kapatın.
- Programı yeniden başlatıp PRAGMATIC MASALARI TARA'ya basın.
- Artık durum satırında "gizli sekme açma kapalı" yazmalı.

NOT
- Bu sürüm masa kartına tıklamaz, ekstra lobi sekmeleriyle masa açmayı denemez.
- Eğer lobi DOM/ağ yanıtı gerçek tableId vermiyorsa o kart sadece kart olarak
  sayılır; gerçek masa ID sayısına eklenmez.
