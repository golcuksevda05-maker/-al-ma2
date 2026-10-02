ROULETTE PRO AI V2.9.19 • KAYITLI MASALARI API'DEN YENİLE

SORUN
- Masa kartlarını tek tek tıklayarak gezmek bazı sitelerde yavaş kalabiliyor.
- Bazı masalarda tableId geliyor ama SON500/statisticHistory cevabı beklenen
  hızda gelmeden lobiye dönülmüş gibi görünebiliyor.
- Kullanıcı, kayıtlı masaların tamamını tek tek tıklamak yerine Pragmatic API
  üzerinden hızlı yenilemek istedi.

YENİ ÖZELLİK
- VERİ paneline yeni buton eklendi:
  KAYITLI MASALARI API'DEN YENİLE

NE YAPAR?
- Daha önce bulunmuş/kaydedilmiş masa bankasındaki tableId listesini alır.
- Açık Chrome oturumunda yakalanmış yetkili Pragmatic statisticHistory API
  şablonunu kullanır.
- Masaları tek tek tıklamadan, API üzerinden SON500 verilerini yenilemeye
  çalışır.
- Aynı anda en fazla 6 API isteği gönderir.
- Durum satırında ilerleme gösterir:
  API TOPLA: 12/61 gönderildi • 6 aktif • 43 bekliyor

ÖNEMLİ SINIR
- API yenileme sadece daha önce tableId olarak bankaya kaydedilmiş masaları
  hızlı yeniler.
- Sitenin lobi/catalog API'si gerçek tableId vermiyorsa, tamamen yeni ve daha
  önce hiç görülmemiş masalar için önce normal tarama veya bir masa açılışıyla
  tableId yakalanması gerekir.

TIKLA-TANI TARAMA DA GÜNCELLENDİ
- Kart tıklanınca yalnız tableId değil, mümkünse statisticHistory/SON500 cevabı
  beklenir.
- Veri gelirse hızlı geçer; veri gelmezse kısa zaman aşımıyla sıradaki masaya
  geçer.

GÜVENLİK
- Bahis yapmaz, çip seçmez, spin başlatmaz.
- API istekleri kullanıcının açık Chrome oturumunda zaten görülen yetkili
  Pragmatic şablonu ile yapılır.
