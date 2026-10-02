ROULETTE PRO AI V2.9.24 • DGA LIVE FEED ÇÖZÜMÜ

SORUN
- statisticHistory/API yenileme bazı operatörlerde OK üretmeden HATA veriyor.
- Lobi kartı tıklama yöntemi de bazı sitelerde masayı yan hedef/popup olarak açıp
  SON500 gelmeden kapanabiliyor.

ARAŞTIRMA SONUCU
- GitHub tarafında Pragmatic canlı rulet verisi için kullanılan ortak yöntem
  statisticHistory endpoint'i değil, Pragmatic DGA WebSocket feed'idir:
  wss://dga.pragmaticplaylive.net/ws
- Subscribe mesajında casinoId, tableId/key ve currency kullanılıyor.
- Bu yüzden V2.9.24'te ana çoklu masa yenileme yolu DGA canlı feed oldu.

YENİ DAVRANIŞ
- PRAGMATIC MASALARI TARA düğmesi bankada kayıt varsa artık eski lobi-kartı
  tıklama döngüsüne girmez; doğrudan DGA CANLI feed başlatır.
- KAYITLI MASALARI API'DEN YENİLE düğmesinin metni değişti:
  KAYITLI MASALARI DGA CANLI YENİLE
- DGA feed açıkken yeni spin geldikçe ilgili masa arşivine eklenir.
- Aynı SON20/SON500 tekrar tekrar canlı veri gibi sayılmaz; mevcut arşivle
  çakıştırılıp sadece yeni gelen spinler uzun arşive eklenir.

CHROME'DAN OTOMATİK ÖĞRENME
- Program Chrome Network websocket frame'lerini izler.
- Pragmatic kendi DGA subscribe mesajını görürse casinoId/currency bilgisini
  otomatik yakalar.
- Eğer henüz yakalanmadıysa yedek casinoId ve para birimi denenir; veri gelmezse
  TRY/USD/EUR/BRL/CAD döngüsüyle yeniden abonelik denenir.

EKRANDA GÖREBİLECEĞİN DURUMLAR
- DGA CANLI: 40 kayıtlı masa aboneliği başladı
- DGA CANLI: bağlı • 40 masa abone • veri bekleniyor
- DGA CANLI: Chrome feed bilgisi yakalandı • casino ... • TRY
- DGA CANLI: X masa güncellendi • son ...
- DGA CANLI: veri gelmedi • başka para birimi deneniyor

KULLANIM
1. Programı aç.
2. En az bir Pragmatic rulet/lobi sekmesi Chrome'da açık olsun. Bu, casinoId ve
   currency bilgisini yakalamayı hızlandırır.
3. Bankada masa kayıtların varsa şu düğmeye bas:
   KAYITLI MASALARI DGA CANLI YENİLE
   veya
   DGA CANLI / MASALARI TARA
4. Beklenen artık OK/HATA değil; DGA CANLI durumunda masalar yeni spin geldikçe
   güncellenecek.

NOT
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- DGA CANLI sürekli feed mantığıyla çalışır; 10 dakika dolunca bağlantıyı tazeleyip
  tekrar abone olur.
- Durdurmak için TARAMAYI DURDUR kullan.
