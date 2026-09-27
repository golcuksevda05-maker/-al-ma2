ROULETTE PRO AI V2.9.1 • AUTO OPEN + AUTO RECOVER

YENİ 1 — DİREKT RULETE DÖNÜŞ
BASLAT_ROULETTE_V2_9_1_AUTO_RECOVER.bat çalıştırıldığında program:
1) ortak kalıcı son-rulet adresini arar,
2) eski sürüm klasörlerindeki last_roulette_url.txt dosyalarını arar,
3) gerekirse yalnız bu programa ait Chrome profilinin geçmişinden son güvenli rulet sayfasını bulur,
4) Chrome'u doğrudan bu sayfayla açar.

Güvenlik için JSESSIONID / token / doğrudan Pragmatic session URL'leri kalıcı kaydedilmez.
Kaydedilen adres casino sitesindeki üst seviye rulet/lobi sayfasıdır.

İlk kez hiçbir güvenli adres bulunamazsa Chrome normal açılır. Ruleti bir kez açtıktan sonra
adres %LOCALAPPDATA%\PragmaticRouletteTracker\last_roulette_url.txt içine kalıcı kaydedilir.
Sonraki açılışlar direkt rulete döner.

YENİ 2 — PRAGMATIC AUTO RECOVER
Program veri toplamaya devam ederken sayfaları hafif DOM metin taramasıyla izler.
Aşağıdaki tür uyarıları algılar:
- sayfayı yenile / sayfayı yeniden yükle
- refresh the page / reload the page
- hata/bağlantı mesajı + görünür Yenile/Refresh/Retry düğmesi

Yanlış tetiklemeyi azaltmak için aynı uyarı iki kez arka arkaya doğrulanmadan restart yapılmaz.

Doğrulanırsa:
1) Python programı exit code 77 ile kapanır,
2) yalnız PragmaticBlackjackChrome adlı dedicated Chrome profili kapatılır,
3) 4 saniye beklenir,
4) Chrome son kayıtlı rulet sayfasıyla yeniden açılır,
5) Roulette Pro AI tekrar başlar,
6) DOM/SON500/tableId veri toplama devam eder.

RESTART FIRTINASI KORUMASI
10 dakika içinde 4 otomatik yeniden başlatmadan fazlasına izin verilmez.
Bu durumda VERİ ekranında:
AUTO KURTARMA: KİLİTLİ
mesajı görünür.

PERFORMANS
OpenCV, screenshot veya video analizi yoktur.
Watchdog yalnız yaklaşık 1.2 saniyede bir metin/button DOM kontrolü yapar; V3 fizik motoru gibi bilgisayarı yormaz.

KORUNANLAR
- V2.9 FINAL CORE tahmin çekirdeği
- LOCKED LIVE 500
- K1/K2 ve edge raporları
- 1K/2K Flaş Auto Sync
- SON500 doğrulanmış catch-up
- tableId bazlı ayrı masa bankaları
- Exact Family / kaynak gating

ÇALIŞTIR:
BASLAT_ROULETTE_V2_9_1_AUTO_RECOVER.bat

ÖNEMLİ:
Otomatik yeniden açılma özelliği .BAT üzerinden çalışır. roulette_v1.py dosyasını doğrudan
çalıştırırsan exit code watchdog devreye giremez.
