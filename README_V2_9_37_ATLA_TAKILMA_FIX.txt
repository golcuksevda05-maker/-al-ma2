ROULETTE PRO AI V2.9.37 • SON500 YOKSA ATLA TAKILMA DÜZELTME

SORUN
- V2.9.36 SON500 olmayan masaları 'SON500 yok • es geçiliyor' diye işaretliyordu.
- Bazı durumlarda bu yazıda kalıp sıradaki masaya geçmeyebiliyordu.
- Sebep: skip dönüşü sadece zamanlanıyordu; aynı DOM taraması tekrarlandığında bekleme tekrar uzayabiliyordu.

DÜZELTME
- SON500 yok kararı verildiği anda masa hemen 'atla' olarak tamamlanır.
- Bekleme kilidi anında temizlenir.
- Oyun içi Lobi düğmesine hemen basılır.
- Lobiye dönünce sıradaki masa seçimi devam eder.

YENİ DAVRANIŞ
- SON500 bulunan masa: 500/500 kaydedilir, arşive eklenir.
- SON500 olmayan masa: yaklaşık 18 sn sonra 'atla' sayılır.
- SON500 sekmesi var ama boşsa: yaklaşık 30 sn sonra 'atla' sayılır.
- 'es geçiliyor' yazısında takılı kalmaması gerekir.

500 SPİNİ NEREDEN GÖRÜRÜM?
1. Ana VERİ DURUMU alanında:
   - PRAGMATIC DIRECT: 500/500
   - PRAGMATIC statisticHistory network: 500/500
   - UZUN MASA ARŞİVİ: 503 gibi satırlar görünür.

2. MASA BANKALARINI GÖR düğmesinde:
   - Her masa için kayıt, güncellik, spin sayısı ve kaynak görünür.

3. Program dosyalarında:
   - table_history500_<masa>.json son görünen 500 sonucu tutar.
   - table_long_archive_<masa>.json uzun arşivi tutar.

NOT
- Ekranda 'UZUN MASA ARŞİVİ: 503' görüyorsan, o masa için 500 spin çekilmiş ve üstüne yeni gelenler eklenmeye başlamış demektir.
