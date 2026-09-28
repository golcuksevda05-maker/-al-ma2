ROULETTE PRO AI V2.9.31 • GÖRÜNÜR SON500 OKUMA

SORUN
- Tek sekme toplayıcı artık masaya gerçek tıklama ile girebiliyor.
- Fakat bazı masalarda statisticHistory cevabı geliyor ama program bu cevaptan sonuç çıkaramıyor:
  statisticHistory cevap verdi ama sonuç ayrıştırılamadı (0)
- Kullanıcı ekranında SON 500 panelinin açık olduğu ve sayıların görünür olduğu görüldü.

DÜZELTME
- Tek sekme toplayıcı artık sadece network statisticHistory cevabına bağlı değil.
- Masa açıkken görünen SON 500 panelini DOM üzerinden de okur.
- SON 500 sekmesi/paneli açıksa altındaki sayı gridini yakalar.
- Etiket aynı DOM blokta değilse bile sağ/alt istatistik panelindeki yoğun sayı kümelerini arar.
- En az 20 sayı bulunursa masa bankasına kaydeder ve lobiye geri döner.

YENİ KAYNAK ADI
- Bu yolla veri alınırsa masa bankasında kaynak şuna benzer görünür:
  SEKMELİ TOPLA görünür SON500

EKRAN DURUMLARI
- SEKMELİ TOPLA: görünür SON500 bekleniyor • tableId • bulunan X
- SEKMELİ TOPLA: görünür SON500 alındı • tableId • N/500 • lobiye dönülüyor
- SEKMELİ TOPLA: NETWORK veri alındı • tableId • sekme kapatılıyor

ÖNEMLİ
- Program masa sayfasında görünen SON 500 panelindeki sayıları okumayı dener.
- Bahis yapmaz, çip seçmez, spin başlatmaz.
- Kendi oynadığın sekmeden bağımsız, tek yan collector sekmesinde çalışır.
