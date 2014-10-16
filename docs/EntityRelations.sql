CREATE TABLE Bestellung (
 bid INT NOT NULL,
 orderData DATE,
 delieveryDate DATE
);

ALTER TABLE Bestellung ADD CONSTRAINT PK_Bestellung PRIMARY KEY (bid);


CREATE TABLE Einheit (
 Einheit CHAR(10) NOT NULL
);

ALTER TABLE Einheit ADD CONSTRAINT PK_Einheit PRIMARY KEY (Einheit);


CREATE TABLE Lieferant (
 luid CHAR(20) NOT NULL,
 address CHAR(1023),
 kundennummer CHAR(20)
);

ALTER TABLE Lieferant ADD CONSTRAINT PK_Lieferant PRIMARY KEY (luid);


CREATE TABLE Menu (
 mname CHAR(255) NOT NULL,
 price FLOAT(10)
);

ALTER TABLE Menu ADD CONSTRAINT PK_Menu PRIMARY KEY (mname);


CREATE TABLE Menuabfolge (
 maid INT NOT NULL,
 mname CHAR(255),
 madate DATE
);

ALTER TABLE Menuabfolge ADD CONSTRAINT PK_Menuabfolge PRIMARY KEY (maid);


CREATE TABLE Rechnung (
 rid INT NOT NULL,
 bid INT,
 bankverbindung CHAR(255),
 rechnungssumme FLOAT(10)
);

ALTER TABLE Rechnung ADD CONSTRAINT PK_Rechnung PRIMARY KEY (rid);


CREATE TABLE Typ (
 tid INT NOT NULL
);

ALTER TABLE Typ ADD CONSTRAINT PK_Typ PRIMARY KEY (tid);


CREATE TABLE Zutat (
 zid INT NOT NULL,
 name CHAR(255),
 Einheit CHAR(10),
 price FLOAT(10),
 luid CHAR(20),
 bestand INT DEFAULT 0
);

ALTER TABLE Zutat ADD CONSTRAINT PK_Zutat PRIMARY KEY (zid);


CREATE TABLE Bestellposten (
 bid INT NOT NULL,
 poid CHAR(10) NOT NULL,
 zid INT,
 menge INT,
 price FLOAT(10)
);

ALTER TABLE Bestellposten ADD CONSTRAINT PK_Bestellposten PRIMARY KEY (bid,poid);


CREATE TABLE Speise (
 sid INT NOT NULL,
 sname CHAR(255),
 tid INT NOT NULL,
 zid INT
);

ALTER TABLE Speise ADD CONSTRAINT PK_Speise PRIMARY KEY (sid);


CREATE TABLE MenuSpeise (
 sid INT NOT NULL,
 mname CHAR(255) NOT NULL
);

ALTER TABLE MenuSpeise ADD CONSTRAINT PK_MenuSpeise PRIMARY KEY (sid,mname);


ALTER TABLE Menuabfolge ADD CONSTRAINT FK_Menuabfolge_0 FOREIGN KEY (mname) REFERENCES Menu (mname);


ALTER TABLE Rechnung ADD CONSTRAINT FK_Rechnung_0 FOREIGN KEY (bid) REFERENCES Bestellung (bid);


ALTER TABLE Zutat ADD CONSTRAINT FK_Zutat_0 FOREIGN KEY (Einheit) REFERENCES Einheit (Einheit);
ALTER TABLE Zutat ADD CONSTRAINT FK_Zutat_1 FOREIGN KEY (luid) REFERENCES Lieferant (luid);


ALTER TABLE Bestellposten ADD CONSTRAINT FK_Bestellposten_0 FOREIGN KEY (bid) REFERENCES Bestellung (bid);
ALTER TABLE Bestellposten ADD CONSTRAINT FK_Bestellposten_1 FOREIGN KEY (zid) REFERENCES Zutat (zid);


ALTER TABLE Speise ADD CONSTRAINT FK_Speise_0 FOREIGN KEY (tid) REFERENCES Typ (tid);
ALTER TABLE Speise ADD CONSTRAINT FK_Speise_1 FOREIGN KEY (zid) REFERENCES Zutat (zid);


ALTER TABLE MenuSpeise ADD CONSTRAINT FK_MenuSpeise_0 FOREIGN KEY (sid) REFERENCES Speise (sid);
ALTER TABLE MenuSpeise ADD CONSTRAINT FK_MenuSpeise_1 FOREIGN KEY (mname) REFERENCES Menu (mname);


