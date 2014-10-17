INSERT INTO Einheit VALUES ('L');
INSERT INTO Einheit VALUES ('kg');
INSERT INTO Einheit VALUES ('MiB');
INSERT INTO Einheit VALUES ('g');
INSERT INTO Einheit VALUES ('m');

INSET INTO Bestellung VALUES (1, '2014-09-09', '2014-10-09');
INSET INTO Bestellung VALUES (2, '2014-09-10', '2014-10-10');
INSET INTO Bestellung VALUES (3, '2014-09-11', '2014-10-11');
INSET INTO Bestellung VALUES (4, '2014-09-12', '2014-10-12');
INSET INTO Bestellung VALUES (5, '2014-09-13', '2014-10-13');

INSERT INTO Lieferant VALUES ('Lieferant 01', 'Somestreet 123', '12345');
INSERT INTO Lieferant VALUES ('Lieferant 03', 'Anyroad 321', 'abc-123');

INSERT INTO Typ VALUES (1);
INSERT INTO Typ VALUES (2;
INSERT INTO Typ VALUES (3);
INSERT INTO Typ VALUES (4);
INSERT INTO Typ VALUES (5);
INSERT INTO Typ VALUES (6);
INSERT INTO Typ VALUES (7);
INSERT INTO Typ VALUES (8);

INSERT INTO Menu VALUES ('Tages Menu', 5.99);
INSERT INTO Menu VALUES ('Suppe und Hauptspeise', 7.99);
INSERT INTO Menu VALUES ('Suppe, Hauptspeise, Nachspeise', 9.99);
INSERT INTO Menu VALUES ('Gulaschsuppe mit Brot', 5.99);
INSERT INTO Menu VALUES ('Wasser und Brot', 2.99);

INSERT INTO Menuabfolge VALUES ( 1,'Tages Menu', '2014-09-09');
INSERT INTO Menuabfolge VALUES ( 2,'Suppe und Hauptspeise', '2014-09-10');
INSERT INTO Menuabfolge VALUES ( 3,'Suppe, Hauptspeise, Nachspeise, '2014-09-11');
INSERT INTO Menuabfolge VALUES ( 4,'Tages Menu', '2014-09-12');
INSERT INTO Menuabfolge VALUES ( 5,'Gulaschsuppe mit Brot', '2014-09-13');
INSERT INTO Menuabfolge VALUES ( 6,'Suppe und Hauptspeise', '2014-09-14');
INSERT INTO Menuabfolge VALUES ( 7,'Tages Menu', '2014-09-15');
INSERT INTO Menuabfolge VALUES ( 8,'Gulaschsuppe mit Brot', '2014-09-16');
INSERT INTO Menuabfolge VALUES ( 9,'Suppe, Hauptspeise, Nachspeise, '2014-09-17');
INSERT INTO Menuabfolge VALUES (10,'Tages Menu', '2014-09-18');

INSERT INTO Rechnung VALUES (1,1,'123456789', 99.77);
INSERT INTO Rechnung VALUES (2,2,'123456789', 19.44);
INSERT INTO Rechnung VALUES (3,3,'123456789', 399);
INSERT INTO Rechnung VALUES (4,4,'123456789', 499);
INSERT INTO Rechnung VALUES (5,5,'123456789', 799);

INSERT INTO Zutat VALUES (1, 'Wasser', 'L', 0.05, 'Lieferant 01', 1000);
INSERT INTO Zutat VALUES (2, 'Brot', 'kg', 1, 'Lieferant 01', 10);
INSERT INTO Zutat VALUES (3, 'Tomaten', 'kg', 2, 'Lieferant 01', 10);
INSERT INTO Zutat VALUES (4, 'Fleish', 'kg', 4, 'Lieferant 02', 8);
INSERT INTO Zutat VALUES (5, 'Karotten', 'kg', 1.5, 'Lieferant 02', 10);

INSERT INTO Bestellposten VALUES (1, 1, 1, 100, 20);
INSERT INTO Bestellposten VALUES (2, 2, 2, 10, 25);
INSERT INTO Bestellposten VALUES (3, 3, 3, 10, 20);
INSERT INTO Bestellposten VALUES (4, 4, 4, 8, 40);
INSERT INTO Bestellposten VALUES (5, 5, 5, 10, 30);

INSERT INTO Speise VALUES (1,  "Brot", 1, 2);
INSERT INTO Speise VALUES (2,  "Wasser", 2, 1);
INSERT INTO Speise VALUES (3,  "Tomaten", 3, 3);
INSERT INTO Speise VALUES (4,  "Fleish", 4, 4);
INSERT INTO Speise VALUES (5,  "Karotten", 5, 5);

INSERT INTO MenuSpeise VALUES (1, 'Wasser und Brot');
INSERT INTO MenuSpeise VALUES (2, 'Wasser und Brot');
INSERT INTO MenuSpeise VALUES (3, 'Suppe und Hauptspeise');
INSERT INTO MenuSpeise VALUES (2, 'Suppe und Hauptspeise');
INSERT INTO MenuSpeise VALUES (5, 'Suppe und Hauptspeise');
INSERT INTO MenuSpeise VALUES (3, 'Suppe, Hauptspeise, Nachspeise');
INSERT INTO MenuSpeise VALUES (2, 'Suppe, Hauptspeise, Nachspeise');
INSERT INTO MenuSpeise VALUES (5, 'Suppe, Hauptspeise, Nachspeise');
INSERT INTO MenuSpeise VALUES (2, 'Tages Menu');
INSERT INTO MenuSpeise VALUES (1, 'Tages Menu');
