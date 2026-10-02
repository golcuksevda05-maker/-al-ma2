ROULETTE PRO AI V2.9.32 • SON500 SABİT BEKLE / TEK SEKME DÜZELTME

KULLANICININ GÖSTERDİĞİ SORUN
- Tek sekme toplayıcı artık masaya giriyor.
- Masada SON 500 paneli gözle görünüyor.
- Fakat program bazen şu durumda kalıyor:
  PRAGMATIC DIRECT: statisticHistory cevap verdi ama sonuç ayrıştırılamadı (0)
  SEKMELİ TOPLA: veri zaman aşımı • sekme kapatılıyor

DÜZELTME
1. Tek sekme modunda timeout artık çocuk/iframe hedefini kapatmaz.
   - Bazı Pragmatic masaları OOPIF/iframe target içinde açılıyor.
   - Eski davranış o child target'ı kapatıyor gibi görünebiliyordu.
   - Yeni davranış: tek collector sekmesi korunur, root sekme lobiye döndürülür.

2. Masa başı bekleme 55 saniyeden 90 saniyeye çıkarıldı.
   - SON500/statisticHistory geç yüklenen masalarda hemen pes etmez.

3. Görünen SON 500 okuyucu güçlendirildi.
   - Normal DOM yanında shadowRoot ve aynı-origin iframe içleri de taranır.
   - SON 500 etiketi ile sayı grid'i aynı blokta değilse sağ/alt yoğun sayı kümeleri aranır.
   - En az 20 sayı bulunursa masa bankasına kaydedilir.

4. Sadece statisticHistory URL'ine bağlı kalmaz.
   - Tek sekme masadayken başka JSON/text game cevaplarında da SON500 benzeri geçmiş aranır.
   - Pragmatic'in farklı şemalarında gameResult / spinResult / outcomeNumber gibi alanlar da okunur.

BEKLENEN YENİ DURUM YAZILARI
- SEKMELİ TOPLA: görünür SON500 bekleniyor • ... • bulunan X
- SEKMELİ TOPLA: görünür SON500 alındı • ... • N/500 • lobiye dönülüyor
- SEKMELİ TOPLA: genel network SON500 alındı • ... • N/500 • lobiye dönülüyor
- Zaman aşımı olursa artık 'sekme kapatılıyor' yerine tek sekme lobiye dönüyor.

NOT
- Program bahis yapmaz, otomatik oyun başlatmaz, çip seçmez.
- Amaç: sen kendi oyun sekmende oynarken, yan collector sekmesinin masaları tek tek gezip SON500/banka verisi toplamasıdır.
