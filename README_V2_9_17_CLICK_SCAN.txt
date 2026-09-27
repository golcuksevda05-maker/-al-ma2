ROULETTE PRO AI V2.9.17 • TEK SEKME TIKLA-TANI MASA TARAMA

SORUN
- V2.9.16'da görünen masaları yeni sekmelerle denemek amaçlanmıştı.
- Bazı sitelerde bu yeni sekmeler Pragmatic Play lobisi yerine sitenin ana
  sayfasına gidiyordu. Bu yüzden gerçek masa tanıma beklenen şekilde ilerlemiyordu.
- Ayrıca lobi sayfasında kullanıcı yukarı kaydırmak istediğinde tarama tekrar
  aşağı çekebiliyordu.

YENİ DAVRANIŞ
- Ekstra sekme açma kapatıldı.
- Arka plan/collector lobi sekmesi görünen masa kartlarını tek tek tıklar.
- Bir kart tıklandıktan sonra program Pragmatic ağ isteğinden tableId ve
  oturum şablonunu yakalamayı bekler.
- tableId yakalanınca kısa süre sonra aynı sekme lobiye döner ve sıradaki
  görünür karta geçer.
- tableId gelmezse belirli zaman aşımından sonra lobiye döner ve sıradaki
  karta geçer.
- Lobi en alta bir kez ulaştıktan sonra program otomatik aşağı çekmeyi bırakır;
  kullanıcı yukarı kaydırırsa zorla aşağı çekmez.

DURUM SATIRI
- "masa kartı açıldı" = görünür kart tıklandı, tableId bekleniyor.
- "masa denemesi tamamlandı • lobiye dönülüyor" = sıradaki kart için geri dönüyor.
- "tek sekme tıklama • kalan görünen X" = mevcut görünür kartlarda henüz
  denenmemiş kart sayısı.

GÜVENLİK
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- Sadece arka plan lobi sekmesinde masa kartını açıp ağ verisini okur.
- Aktif açık oyun masasının history/tahmin verisi arka plan taramasıyla
  karıştırılmaz.
