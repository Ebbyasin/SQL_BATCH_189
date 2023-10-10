create database yasin01;
create database yasin02;
create database yasin03;

DROP DATABASE yasin01;
DROP DATABASE yasin02;
-- noktalı virgülü kullanmak zorunlu değil,nerde bittigini anlamak için yapıyoruz
DROP DATABASE yasin03;

CREATE TABLE ebby(--PARANTEZ İÇİNE BU TABLO DA YER ALACAK SÜTUNLAR YAZILIR
id CHAR(4),	
name VARCHAR(20),--isim sütünunda değişken uzunlugunda değerler olacağı için varchar kullanılır
grade REAL,
register_date DATE -- BURADA KELİMELER JAVA DAN FARKLI OLARAK BUYUK HARFLE BASLAR AMA BİZ BUNU TERCİH ETMEYİZ,ALT TİRE KULLANIRIZ
	--SON SÜTUN YAZILDIKTAN SONRA VİRGÜL KONULMAZ
	--JAVADAN FARKLI OLARAK ÖNCE SÜTUN İSMİ SONRA DATA TİPİ GELİR
	--İLİŞKİSEL SORGULARDA TABLOLAR VE TABLOLAR ARASINDAKİ İLİŞKİLER SCHEMA DA BULUNUR
	--ARAYÜZDEN TABLOYU ÜSTÜNE SAĞ TIKLAYIP,WİEW-ALL ROW SEÇENEKLERİYLE HALLEDERİZ..

);

CREATE TABLE ebbyss AS SELECT name,grade FROM ebby;

INSERT INTO ebby VALUES('1001','Sherlock Holmes',99.8,'2023-10-05');
INSERT INTO ebby VALUES('1002','Harry Potter',100.0,now());--now() icinde bulundugumuz zamani getiriyor
--yukardaki sırayla once id,sonra name...id string farklı olarak tek tırnak olacak
--insert ekle,nereye into yani içine,neyin içine ebby tablosunun içine,neyi ekleyecem şu değerleri..
--arayüz kullanmadan tablo görüntüleme komutlarlar

SELECT * FROM ebby;
--seç neyi seçiyoruz asteks(yıldız) all demek yerine yildiz hepsini seç ,nerden ebby tablosundan seç ve getir
--birden fazla sorguyu aynı anda seçtiğimizde noktalı virgül kullanmak zorundayız,kullanmazsak sorgunun nerede bittiğini anlayamaz.execute verir

INSERT INTO ebby(name,grade) VALUES('Jack Sparrow',96.2);--bazı sütunlara data böyle eklenir.

SELECT name,grade FROM ebby;--tüm kayıtların belirli sütunlardaki dataları böyle görürüz

--tablo olusturma tanımlama kısmında olduğu için yani dışarda ddl dir,definition
--data oluşturma tabloya data ekleme data manipulation yani içerde
--tablodaki tüm kayıtları görüntüleme yani sorgulama yapıyoruz,dql dir***

SELECT * FROM ebbyss;






