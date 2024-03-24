CREATE TABLE YAZARLAR(
yazarNo int not null identity(1,1) PRIMARY KEY,
yazarAdi nvarchar(50) not null,
yazarSoyadi nvarchar(50) not null,
ISBN nvarchar(50) constraint FK_kitap_YAZARLAR
FOREIGN KEY(ISBN) references kitaplar(ISBN)
);

CREATE TABLE KATEGORILER(
KatigoriNo int not null identity(1,1) PRIMARY KEY,
KatigoriAdi nvarchar(50) not null,
ISBN nvarchar(50) constraint FK_kitap_KATEGORILER
FOREIGN KEY(ISBN) references kitaplar(ISBN)
);
