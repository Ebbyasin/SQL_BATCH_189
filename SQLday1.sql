--tek yorum satırı
/* coklu yorum satiri */

---------------- DAY'1 NT--------------
-- 1- Database olusturma --DDL
CREATE DATABASE yasin; -- SQL komutlarında büyük/küçük harf duyarlılıgı yoktur.
CREATE DATABASE yasin2;


-- 2-database silme --DDL--data definition language-veri tanımlama(tablo ve veritabanlarında,dış kısım)
DROP DATABASE yasin2;

--3-tablo oluşturma-DDL
CREATE TABLE students(
id CHAR(4),
name VARCHAR(20),
grade REAL,
register_date DATE
);

--4-mevcut tablodan yeni bir tablo oluşturma
CREATE TABLE grades AS SELECT name,grade FROM students;

--5-tabloya data ekleme-DML-data manipulation-iç kısım
INSERT INTO students VALUES('1001','Sherlock Holmes',99.8,'2023-10-04');
INSERT INTO students VALUES('1002','Harry Potter',100.0,now());


--6-tablodaki tüm kayıtları(dataları) görüntüleme --DQL
SELECT * FROM students; 

--7-tablodaki bazı sütunlara data ekleme
INSERT INTO students(name,grade) VALUES('Jack Sparrow',88.8);

--8-tabloda tüm kayıtların belirli sütunlarındaki dataları görüntüleme
SELECT name,grade FROM students;

--practice
--grades tabloyu silelim
--4. adımı tekrar yapalım
--tabloyu görüntüleme

SELECT * FROM grades;

/*------------------------------------
ÖDEVV:)

1) Tablo Oluşturma

“tedarikciler” isminde bir tablo olusturun,
“tedarikci_id”, “tedarikci_ismi”, “tedarikci_adres”
ve “ulasim_tarihi”	field’lari olsun.

2) Var olan tablodan yeni tablo olusturmak
 “tedarikci_info” isminde bir tabloyu  “tedarikciler” tablosundan olusturun.
Icinde “tedarikci_ismi”, “ulasim_tarihi” field’lari olsun

3) Data ekleme
“ ogretmenler” isminde tablo olusturun.
 Icinde “kimlik_no”, “isim”, “brans” ve “cinsiyet” field’lari olsun.
“ogretmenler” tablosuna bilgileri asagidaki gibi olan kisileri ekleyin.
kimlik_no: 234431223, isim: Ayse Guler, brans : Matematik, cinsiyet: kadin.
kimlik_no: 234431224, isim: Ali Guler, brans : Fizik, cinsiyet: erkek.

4) bazı fieldları olan kayıt ekleme
“ogretmenler” tablosuna bilgileri asagidaki gibi olan bir kisi ekleyin.
kimlik_no: 567597624, isim: Veli Guler

--------------------------------------*/



