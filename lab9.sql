--CREATE database new_lab9
 
/*
USE new_lab9

create table tip_klient (
id_tip_klient int not null primary key identity(1,1),
tip_klient nvarchar(50) not null
);

create table rayon (
id_rayon int not null primary key identity(1,1),
rayon nvarchar(50) not null
);

create table klient_ (
id_klient int not null primary key identity(1,1),
fam nvarchar(50) not null,
imya nvarchar(50) not null,
otch nvarchar(50) not null,
passport nvarchar(12) not null,
pasword nvarchar(50) not null,
loginn nvarchar(50) not null,
mesto_raboty nvarchar(50) not null,
skidka nvarchar(50) not null,
id_rayon int foreign key references rayon(id_rayon) not null,
id_tip_klient int foreign key references tip_klient(id_tip_klient) not null
);

create table tip_kontaktov (
id_tip_kontaktov int not null primary key identity(1,1),
tip_kontaktov nvarchar(50) not null
);

create table kontakty (
id_kontakty int not null primary key identity(1,1),
kontakty nvarchar(50) not null,
id_klient int foreign key references klient_(id_klient) not null,
id_tip_kontaktov int foreign key references tip_kontaktov(id_tip_kontaktov) not null
);

create table tip_zakaza (
id_tip_zakaza int not null primary key identity(1,1),
tip_zakaza nvarchar(50) not null
);

create table tip_prodaj (
id_tip_prodaj int not null primary key identity(1,1),
tip_prodaj nvarchar(50) not null
);

create table sostoyanie (
id_sostoyanie int not null primary key identity(1,1),
sostoyanie nvarchar(50) not null
);

create table doljnist (
id_doljnist int not null primary key identity(1,1),
doljnist nvarchar(50) not null
);

create table sotrudnik (
id_sotrudnik int not null primary key identity(1,1),
fam nvarchar(50) not null,
imya nvarchar(50) not null,
otch nvarchar(50) not null,
id_doljnist int foreign key references doljnist(id_doljnist) not null
);

create table zakaz (
id_zakaz int not null primary key identity(1,1),
dataPos date not null,
nommer_doc nvarchar(50) not null,
comments nvarchar(50) not null,
id_klient int foreign key references klient_(id_klient) not null,
id_tip_zakaza int foreign key references tip_zakaza(id_tip_zakaza) not null,
id_sostoyanie int foreign key references sostoyanie(id_sostoyanie) not null,
id_tip_prodaj int foreign key references tip_prodaj(id_tip_prodaj) not null,
id_sotrudnik int foreign key references sotrudnik(id_sotrudnik) not null
);

create table vid_oplaty (
id_vid_oplaty int not null primary key identity(1,1),
vid_oplaty nvarchar(50) not null
);

create table oplata (
id_oplata int not null primary key identity(1,1),
dataOplati date not null,
summa float not null,
comments nvarchar(50) not null,
id_zakaz int foreign key references zakaz(id_zakaz) not null,
id_vid_oplaty int foreign key references vid_oplaty(id_vid_oplaty) not null
);

create table tip_tovara (
id_tip_tovara int not null primary key identity(1,1),
tip_tovara nvarchar(50) not null
);

create table tovar (
id_tovar int not null primary key identity(1,1),
tovar nvarchar(50) not null,
comments nvarchar(50) not null,
photo nvarchar(500) not null,
id_tip_tovara int foreign key references tip_tovara(id_tip_tovara) not null
);

create table price_list (
id_price_list int not null primary key identity(1,1),
cena float not null,
dataa date not null,
comments nvarchar(50) not null,
id_tovar int foreign key references tovar(id_tovar) not null
); 

create table tip_postavshika (
id_tip_postavshika int not null primary key identity(1,1),
tip_postavshika nvarchar(50) not null
); 

create table postavshik (
id_postavshik int not null primary key identity(1,1),
nazvanie nvarchar(50) not null,
fam nvarchar(50) not null,
imya nvarchar(50) not null,
otch nvarchar(50) not null,
id_tip_postavshika int foreign key references tip_postavshika(id_tip_postavshika) not null
);

create table tip_postavki (
id_tip_postavki int not null primary key identity(1,1),
tip_postavki nvarchar(50) not null
);

create table postavki (
id_postavki int not null primary key identity(1,1),
nomer_doc nvarchar(50) not null,
dataa date not null,
comments nvarchar(500) not null,
id_postavshik int foreign key references postavshik(id_postavshik) not null,
id_tip_postavki int foreign key references tip_postavki(id_tip_postavki) not null
);

create table oplataPostavki (
id_oplata int not null primary key identity(1,1),
dataOp date not null,
summa float not null,
comments nvarchar(500) not null,
id_postavki int foreign key references postavki(id_postavki) not null
);

create table spisok_postavki (
id_spisok_postavki int not null primary key identity(1,1),
id_postavki  int foreign key references postavki(id_postavki) not null,
ceana float not null,
kol_vo int not null,
srok_godnosti date not null
);

create table spisok_tovarov (
id_spisok_tovarov int not null primary key identity(1,1),
cena float not null,
kolichestvo int not null,
id_zakaz int foreign key references zakaz(id_zakaz) not null,
id_tovar int foreign key references tovar(id_tovar) not null,
id_spisok_postavki int foreign key references spisok_postavki(id_spisok_postavki) not null
);
*/

/*
INSERT INTO tip_tovara (tip_tovara) 
VALUES 
('Electronics'),
('Clothing'),
('Furniture'),
('Home goods');

INSERT INTO tovar (tovar, comments, photo, id_tip_tovara)
VALUES
('iPhone', 'Latest model with great camera', 'iPhone.jpg', 1),
('Shirt', 'Stylish and comfortable', 'Shirt.jpg', 2),
('Sofa', 'Comfortable and spacious', 'Sofa.jpg', 3),
('Blender', 'Powerful and easy to use', 'Blender.jpg', 4);

INSERT INTO price_list (cena, dataa, comments, id_tovar)
VALUES 
(999.99, '2022-12-01', 'Launch price', 1),
(39.99, '2022-06-01', 'Summer collection', 2),
(499.99, '2022-08-01', 'Limited offer', 3),
(79.99, '2022-09-01', 'Fall collection', 4);

INSERT INTO tip_postavshika (tip_postavshika)
VALUES 
('Manufacturer'),
('Retailer'),
('Distributor'),
('Wholesaler');

INSERT INTO postavshik (nazvanie, fam, imya, otch, id_tip_postavshika)
VALUES 
('Apple Inc.', 'Steve', 'P', 'Jobs', 1),
('Best Buy', 'Hubert', 'J', 'Whitmore', 2),
('Samsung', 'Lee', 'Byung-chul', 'P', 3),
('Costco', 'James', 'Sinegal', 'S', 4);

INSERT INTO tip_postavki (tip_postavki)
VALUES
('Ground Shipping'),
('2-Day Shipping'),
('Next Day Shipping'),
('International Shipping');

INSERT INTO postavki (nomer_doc, dataa, comments, id_postavshik, id_tip_postavki)
VALUES 
('P0001', '2022-01-01', 'First shipment from Apple Inc.', 1, 1),
('P0002', '2022-02-01', 'Monthly shipment from Best Buy', 2, 2),
('P0003', '2022-03-01', 'Weekly shipment from Samsung', 3, 3),
('P0004', '2022-04-01', 'Monthly shipment from Costco', 4, 4);

INSERT INTO oplataPostavki (dataOp, summa, comments, id_postavki)
VALUES 
('2022-01-05', 1000, 'Payment for shipment P0001', 1),
('2022-02-01', 2000, 'Payment for shipment P0002', 2),
('2022-03-10', 1500, 'Payment for shipment P0003', 3),
('2022-04-15', 2500, 'Payment for shipment P0004', 4);

INSERT INTO spisok_postavki (id_postavki, ceana, kol_vo, srok_godnosti)
VALUES 
(1, 20, 50, '2022-12-31'),
(2, 30, 40, '2023-05-31'),
(3, 25, 60, '2023-07-31'),
(4, 35, 70, '2023-10-31');

INSERT INTO rayon(rayon)
VALUES 
('Central'),
('Suburban'),
('Rural');

INSERT INTO tip_klient(tip_klient)
VALUES 
('Retail'),
('Wholesale'),
('Private');

INSERT INTO klient_(fam, imya, otch, passport, pasword, loginn, mesto_raboty, skidka, id_rayon, id_tip_klient)
VALUES 
('John', 'A', 'Doe', '123456789', 'password1', 'johndoe', 'Microsoft', 10, 1, 1),
('Jane', 'B', 'Doe', '987654321', 'password2', 'janedoe', 'Google', 20, 2, 2),
('Jim', 'C', 'Smith', '111222333', 'password3', 'jimsmith', 'Apple', 30, 3, 3);

INSERT INTO tip_kontaktov(tip_kontaktov)
VALUES ('email'), ('phone'), ('skype'), ('viber'), ('whatsapp');

INSERT INTO kontakty(kontakty, id_klient, id_tip_kontaktov)
VALUES 
('chingiz.kartanbaev@gmail.com', 1, 1),
('0555261203', 2, 2),
('Chingiz@skype', 3, 3);	

INSERT INTO sostoyanie (sostoyanie)
VALUES ('active'), ('inactive'), ('suspended');

INSERT INTO tip_zakaza (tip_zakaza)
VALUES ('Retail'), ('Wholesale'), ('Bulk');

INSERT INTO tip_prodaj (tip_prodaj)
VALUES ('Retail'), ('Wholesale'), ('Online');

INSERT INTO doljnist (doljnist)
VALUES ('Manager'), ('Developer'), ('Sales representative'), ('Accountant'), ('Secretary');

INSERT INTO sotrudnik (fam, imya, otch, id_doljnist)
VALUES 
('Бирюкова', 'Дарья', 'Даниэльевна', 1),
('Зотов', 'Александр', 'Данилович', 3),
('Мещеряков', 'Марк', 'Владимирович', 4);

INSERT INTO vid_oplaty (vid_oplaty)
VALUES ('cash'), ('non-cash'), ('credit card');

INSERT INTO zakaz (dataPos, nommer_doc, comments, id_klient, id_tip_zakaza, id_sostoyanie, id_tip_prodaj, id_sotrudnik)
VALUES ('2023-02-11', '0001', 'Комментарий 1', 1, 1, 1, 1, 1),
       ('2023-02-12', '0002', 'Комментарий 2', 2, 2, 2, 2, 2),
       ('2023-02-13', '0003', 'Комментарий 3', 3, 3, 3, 3, 3);

INSERT INTO oplata (dataOplati, summa, comments, id_zakaz, id_vid_oplaty)
VALUES
('2022-01-01', 1000, 'Payment for order 1', 5, 1),
('2022-02-01', 500, 'Payment for order 2', 6, 2),
('2022-03-01', 800, 'Payment for order 3', 7, 3);

INSERT INTO spisok_tovarov(cena, kolichestvo, id_zakaz, id_tovar, id_spisok_postavki)
VALUES (100, 2, 5, 1, 1),
(200, 3, 6, 2, 2),
(150, 4, 7, 3, 3);
*/



USE new_lab9
/*
⦁	Список поставки за период  по товарам
SELECT * 
FROM spisok_postavki
WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_tovarov WHERE id_tovar in (SELECT id_tovar FROM tovar WHERE id_tovar in 
(SELECT id_tovar FROM price_list WHERE dataa = '2022-06-01')))

⦁	Список товаров поставленных по поставщику
SELECT *
FROM spisok_tovarov
WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_postavki WHERE id_postavki in (SELECT id_postavki FROM postavki
WHERE id_postavshik in (SELECT id_postavshik FROM postavshik WHERE nazvanie = 'Best Buy')))


⦁	Список товаров поставленных по типу товара
SELECT *
FROM spisok_postavki
WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_tovarov WHERE id_tovar in (SELECT id_tovar FROM tovar WHERE tovar = 'iPhone'))


⦁	Поставки по товарам за период
SELECT *
FROM postavki
WHERE id_postavki in (SELECT id_postavki FROM spisok_postavki WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_tovarov WHERE id_tovar in (SELECT id_tovar FROM tovar WHERE tovar = 'iPhone')) )


⦁	Изменение цен на товары, поставленные за период
UPDATE price_list SET cena = 134
WHERE dataa >= '2022-09-01' and dataa <= '2022-12-01';


⦁	Оплата по поставкам (журнал) за период
SELECT *
FROM oplata
WHERE id_zakaz in (SELECT id_zakaz FROM zakaz WHERE id_zakaz in (SELECT id_zakaz FROM spisok_tovarov WHERE id_spisok_postavki IN (
SELECT id_spisok_postavki FROM spisok_postavki WHERE id_postavki in (SELECT id_postavki FROM postavki WHERE dataa BETWEEN ('2022-01-01')and('2022-03-01')))))
*/



/*
⦁	Заказы по типу продаж за период
DECLARE @id_zaka INT

SELECT @id_zaka = id_zakaz 
FROM zakaz
WHERE id_sostoyanie	= (SELECT id_sostoyanie FROM sostoyanie WHERE sostoyanie = 'inactive') and dataPos >= '2023-02-11' and dataPos <= '2023-02-13'

SELECT id_tovar, kolichestvo
FROM spisok_tovarov
WHERE id_zakaz = @id_zaka


⦁	Заказы клиента за период
SELECT *
FROM zakaz
WHERE id_klient in (SELECT id_klient FROM klient_ WHERE id_klient = 1) and dataPos BETWEEN ('2023-02-11')and('2023-02-12')


⦁	Изменение цен на товары, поставленные за период
UPDATE price_list SET cena = 134
WHERE dataa >= '2022-09-01' and dataa <= '2022-12-01';


⦁	Актуальный прайс-лист
SELECT *
FROM price_list;


⦁	Оплата по продажам (журнал) за период
SELECT id_oplata, summa, id_zakaz
FROM oplata
WHERE dataOplati >= '2022-01-01' and dataOplati <= '2022-03-01'


⦁	Оплата по виду оплаты за период
SELECT summa
FROM oplata
WHERE id_vid_oplaty = (SELECT id_vid_oplaty from vid_oplaty WHERE vid_oplaty = 'cash') and dataOplati >= '2022-01-01' and dataOplati <= '2022-03-01'


⦁	Продажи по сотрудникам статистика
SELECT *
FROM zakaz
WHERE id_sotrudnik  = 1


⦁	Продажи по району за период
SELECT *
FROM zakaz
WHERE id_klient in (SELECT id_klient FROM klient_ WHERE id_rayon in (SELECT id_rayon FROM rayon WHERE rayon = 'Central'))


⦁	Контакты клиентов
SELECT kontakty
FROM kontakty
WHERE id_klient = (SELECT id_klient FROM klient_ WHERE id_klient = 2)


⦁	Заказы по типу продаж за период
SELECT id_zakaz, id_tip_prodaj
FROM zakaz


⦁	Заказы по типу заказа за период
SELECT id_zakaz, id_tip_zakaza
FROM zakaz


⦁	Остаток товара за период (в одной выборке отразить поставки и продажи)
DECLARE @id_kol INT
SELECT @id_kol = kolichestvo
FROM spisok_tovarov
WHERE id_spisok_postavki = 1;

DECLARE @id_koll INT
SELECT @id_koll = kol_vo
FROM spisok_postavki
WHERE id_spisok_postavki = 1;

print (@id_koll - @id_kol) 
*/

