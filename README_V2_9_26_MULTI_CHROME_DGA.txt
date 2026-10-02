ROULETTE PRO AI V2.9.26 • MULTI CHROME DGA

SORUN
- V2.9.25'te kullanıcı ekranında şu durum görüldü:
  CHROME DGA: bekleniyor • 0/0 abonelik • 0 frame • 42s veri bekliyor
- Bu, WebSocket'in açılacağı JavaScript state'inin seçilen tek Chrome context'inde
  kalmadığını veya yanlış frame/context'in poll edildiğini gösterir.

YENİ ÇÖZÜM
- DGA artık sadece tek Chrome context'e enjekte edilmiyor.
- Program aktif rulet sayfası, games/pragmatic iframe context'leri ve uygun
  üst sayfa context'leri dahil olmak üzere birden fazla Chrome Runtime context'i
  dener.
- Poll işlemi de tek context yerine bu context'lerin hepsini izler.
- 0/0 abonelik/state boş kalırsa program beklemek yerine otomatik yeniden enjekte eder.
- 45 saniye boyunca hiç frame gelmezse context tazelenir.

EKRANDA BEKLENEN DURUMLAR
- CHROME DGA: Chrome içinde websocket açılıyor • 121 masa • 4 context
- CHROME DGA: başlatıldı • 121 masa • 4 context • casino ... • TRY
- CHROME DGA: open • 121/121 abonelik • ... frame • 4 context • ...s veri bekliyor
- DGA CANLI: Chrome feed veri aldı • masa adı
- CHROME DGA: context state boş • ... context • yeniden başlatılıyor

KULLANIM
1. Chrome'da en az bir Pragmatic rulet masası veya Pragmatic lobi açık olsun.
2. Programda V2.9.26 MULTI DGA yazdığını kontrol et.
3. KAYITLI MASALARI DGA CANLI YENİLE veya DGA CANLI / MASALARI TARA'ya bas.
4. 0/0 abonelikte uzun süre beklemesi artık normal değildir; program kendi
   yeniden başlatma döngüsüne girmelidir.

NOT
- Program bahis yapmaz, çip seçmez, spin başlatmaz.
- Bu sürüm özellikle V2.9.25'te görülen 0/0 abonelik sorununu hedefler.
