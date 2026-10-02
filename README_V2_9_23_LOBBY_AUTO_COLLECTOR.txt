ROULETTE PRO AI V2.9.23 • LOBİ OTO TOPLAYICI YEDEĞİ

SORUN
- Bazı sitelerde API yenileme OK üretmeden HATA verebiliyor.
- Bunun nedeni Pragmatic statisticHistory isteğinin yalnızca belirli iframe/lobi
  bağlamında çalışması veya oturum/origin sınırlamaları olabilir.

YENİ ÇÖZÜM
- KAYITLI MASALARI API'DEN YENİLE çalışır; eğer tamamlandığında OK 0 ve HATA > 0
  olursa program otomatik olarak lobi sekme toplayıcıya geçer.
- Lobi toplayıcı ayrı/dedike Pragmatic lobi hedefini açar.
- Görünen rulet kartlarını tek tek tıklar.
- Masa açılınca statisticHistory/SON500 verisini bekler.
- Veri gelirse kaydeder ve sıradaki masaya geçer.
- Tarama bittikten sonra 10 dakika sonra otomatik tekrar dener.

10 DAKİKA GÜNCELLEME
- Lobi toplayıcı her döngüde SON500 penceresini alır.
- Mevcut uzun masa arşiviyle karşılaştırır.
- Sadece yeni gelen spinleri arşivin başına ekler.
- Böylece son bilinen 500 üzerine ne geldiyse uzun arşive dahil edilir.

DURUM SATIRLARI
- API TOPLA: OK 0 / HATA X • lobi sekme toplayıcıya geçiliyor
- MASA TARAMA: masa kartı açıldı • veri/SON500 bekleniyor
- MASA TARAMA: veri alındı • sıradaki masaya geçiliyor
- MASA TARAMA: ... • 10 dk sonra otomatik tekrar

NOT
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- Otomatik 10 dakika tekrarı TARAMAYI DURDUR ile kapatılır.
