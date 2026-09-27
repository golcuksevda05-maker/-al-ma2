ROULETTE PRO AI V2.9.22 • CHROME RUNTIME API YENİLEME

SORUN
- KAYITLI MASALARI API'DEN YENİLE sırasında OK 0 / HATA artabiliyordu.
- Python tarafındaki doğrudan urllib isteği bazı sitelerde Pragmatic oturum
  çerezi / origin / iframe bağlamını tam taklit edemediği için başarısız
  olabiliyordu.

DÜZELTME
- API yenileme artık önce açık Chrome içindeki yetkili Pragmatic Runtime
  context'inde çalışır.
- Yani statisticHistory isteği kullanıcının zaten giriş yapmış olduğu Chrome
  oturumu içinde fetch(credentials='include') ile yapılır.
- Bu yöntem çerez/origin/iframe yetkisini daha doğru kullanır.
- Runtime yöntemi uygun context bulamazsa eski Python HTTP yöntemi yedek olarak
  denenir.

EKRAN DURUMU
- API TOPLA satırı OK/HATA/aktif/bekleyen göstermeye devam eder.
- OK artıyorsa veri arka planda başarıyla kaydediliyor demektir.
- HATA artarsa MASA BANKALARINI GÖR ekranında ilgili masa hata nedeniyle
  listelenir.

ÖNERİLEN AKIŞ
1. Bir Pragmatic rulet masası açık olsun. Böylece Chrome içinde yetkili
   Pragmatic context oluşur.
2. KAYITLI MASALARI API'DEN YENİLE'ye bas.
3. Durum satırında OK değerinin artmasını izle.

NOT
- MASA API ÖĞREN temiz banka öğretmek için kullanılır.
- KAYITLI MASALARI API'DEN YENİLE öğrenilmiş bankayı API'den güncellemek içindir.
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
