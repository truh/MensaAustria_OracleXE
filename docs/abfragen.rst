SQL Abfragen
============

Tabellen
--------

Abfragen zur Erstellung der Tabellen:

.. code:: sql

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

Diese sollten nur einmal ausgeführt werden, da anonsten Fehler wegen der Primary Keys erscheinen.

Daten
-----

Einfügen von Beispieldaten:

Willinger:

.. code:: sql

    INSERT INTO Bestellung(bid, orderData, delieveryDate) VALUES (20, '2014-09-14', '2014-09-20');
    INSERT INTO Bestellung(bid, orderData, delieveryDate) VALUES (21, '2014-09-14', '2014-09-20');
    INSERT INTO Bestellung(bid, orderData, delieveryDate) VALUES (22, '2014-09-14', '2014-09-20');
    INSERT INTO Bestellung(bid, orderData, delieveryDate) VALUES (23, '2014-09-14', '2014-09-20');
    INSERT INTO Bestellung(bid, orderData, delieveryDate) VALUES (24, '2014-09-14', '2014-09-20');

    INSERT INTO Einheit(Einheit) VALUES('MB');
    INSERT INTO Einheit(Einheit) VALUES('GB');
    INSERT INTO Einheit(Einheit) VALUES('TB');
    INSERT INTO Einheit(Einheit) VALUES('PB');
    INSERT INTO Einheit(Einheit) VALUES('EB');

    INSERT INTO Lieferant(luid, address, kundennummer) VALUES('Haribo', 'Gammelgasse 42', '9192919');
    INSERT INTO Lieferant(luid, address, kundennummer) VALUES('Chio', 'Gammelgasse 44', '3352515');
    INSERT INTO Lieferant(luid, address, kundennummer) VALUES('Gammelfleisch Gmbh', 'Gammelgasse 1', '134134');
    INSERT INTO Lieferant(luid, address, kundennummer) VALUES('Test', 'Gammelgasse 93', '1313');
    INSERT INTO Lieferant(luid, address, kundennummer) VALUES('Blubb', 'Gammelgasse 110', '13434214');

    INSERT INTO Menu(mname, price) VALUES('Tagesteller', 99.81);
    INSERT INTO Menu(mname, price) VALUES('Überraschung', 12.12);
    INSERT INTO Menu(mname, price) VALUES('Gift', 42.49);
    INSERT INTO Menu(mname, price) VALUES('Nichts', 99.10);
    INSERT INTO Menu(mname, price) VALUES('Blubb', 100.1);

    INSERT INTO Menuabfolge(maid, mname, madate) VALUES(20, 'Tagesteller', '2014-10-22');
    INSERT INTO Menuabfolge(maid, mname, madate) VALUES(21, 'Überraschung', '2014-10-23');
    INSERT INTO Menuabfolge(maid, mname, madate) VALUES(22, 'Gift', '2014-10-24');
    INSERT INTO Menuabfolge(maid, mname, madate) VALUES(23, 'Nichts', '2014-10-25');
    INSERT INTO Menuabfolge(maid, mname, madate) VALUES(24, 'Blubb', '2014-10-26');

    INSERT INTO Rechnung(rid, bid, bankverbindung, rechnungssume) VALUES(30, 20, 'IBAN919239102010012', 999.99);
    INSERT INTO Rechnung(rid, bid, bankverbindung, rechnungssume) VALUES(31, 21, 'IBAN60', 666.66);
    INSERT INTO Rechnung(rid, bid, bankverbindung, rechnungssume) VALUES(32, 22, '23434214341', 420.69);
    INSERT INTO Rechnung(rid, bid, bankverbindung, rechnungssume) VALUES(33, 23, '134143', 66.66);
    INSERT INTO Rechnung(rid, bid, bankverbindung, rechnungssume) VALUES(34, 24, '134566113', 333.33);

    INSERT INTO Typ(tid) VALUES(60);
    INSERT INTO Typ(tid) VALUES(61);
    INSERT INTO Typ(tid) VALUES(62);
    INSERT INTO Typ(tid) VALUES(63);
    INSERT INTO Typ(tid) VALUES(64);
    INSERT INTO Typ(tid) VALUES(65);

    INSERT INTO Zutat(zid, name, Einheit, price, luid, bestand) VALUES(70, 'Gift', 'MB', 'Haribo', 999);
    INSERT INTO Zutat(zid, name, Einheit, price, luid, bestand) VALUES(71, 'Sehr giftiges Gift', 'GB', 'Chio', 666);
    INSERT INTO Zutat(zid, name, Einheit, price, luid, bestand) VALUES(72, 'Mist', 'TB', 'Gammelfleisch Gmbh', 333);
    INSERT INTO Zutat(zid, name, Einheit, price, luid, bestand) VALUES(73, 'Kartoffel', 'PB', 'Test', 420);
    INSERT INTO Zutat(zid, name, Einheit, price, luid, bestand) VALUES(74, 'Tomate', 'Blubb', 'Haribo', 69);

    INSERT INTO Bestellposten(bid, poid, zid, menge, price) VALUES(20, 90, 70, 100, 9229.2);
    INSERT INTO Bestellposten(bid, poid, zid, menge, price) VALUES(21, 91, 71, 100, 2222.2);
    INSERT INTO Bestellposten(bid, poid, zid, menge, price) VALUES(22, 92, 72, 100, 3333.2);
    INSERT INTO Bestellposten(bid, poid, zid, menge, price) VALUES(23, 93, 73, 100, 4444.2);
    INSERT INTO Bestellposten(bid, poid, zid, menge, price) VALUES(24, 94, 74, 100, 5555.2);

    INSERT INTO Speise(sid, sname, tid, zid) VALUES(100, 'Giftiger Abfall', 60, 70);
    INSERT INTO Speise(sid, sname, tid, zid) VALUES(101, 'Blöder Abfall', 61, 71);
    INSERT INTO Speise(sid, sname, tid, zid) VALUES(102, 'Etwas', 62, 72);
    INSERT INTO Speise(sid, sname, tid, zid) VALUES(103, 'Schweine Innereien', 63, 73);
    INSERT INTO Speise(sid, sname, tid, zid) VALUES(104, 'Nichts', 64, 74);

    INSERT INTO MenuSpeise(100, 'Tagesteller');
    INSERT INTO MenuSpeise(101, 'Tagesteller');
    INSERT INTO MenuSpeise(102, 'Tagesteller');
    INSERT INTO MenuSpeise(103, 'Tagesteller');
    INSERT INTO MenuSpeise(104, 'Tagesteller');
    INSERT INTO MenuSpeise(100, 'Gift');
    INSERT INTO MenuSpeise(102, 'Gift');
    INSERT INTO MenuSpeise(103, 'Nichts');




Abfragen der Daten
------------------