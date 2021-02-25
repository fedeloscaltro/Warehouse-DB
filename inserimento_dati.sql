--codice per popolare tutte le tabelle del database
INSERT INTO CLIENTE (P_IVA_C, nome, contatto, ambito_lavorativo)
VALUES ('11122233300', 'Buffetti', '+391112223344', 'Cancelleria'),
('12345678900', 'Energya S.p.A.', '+391231233445', 'Cancelleria'),
('08978675600', 'Coop S.r.l.', '+391010293948', 'Alimentari'),
('16457382980', 'Smeg S.p.A.', '+391236831286', 'Elettrodomestici'),
('79685718274', 'Samsung S.p.A.', '+393204563459', 'Elettrodomestici'),
('47384389284', 'Max Mara S.r.l.', '+393453451234', 'Abbigliamento'),
('90329583855', 'Tetra Pak Italiana S.p.A.', '+391234349087', 'Riparazione'),
('10395832935', 'Comet S.p.A.', '+393124759843', 'Elettronica'),
('64821910928', 'Conad S.p.A', '+393180900573', 'Alimentari'),
('01093853923', 'Walvoil S.p.A.', '+393453451234', 'Meccanica'),
('32903953679', 'Lombardini S.r.L.', '+393126789456', 'Meccanica'),
('09864902245', 'Bar Gilles', '+393472764312', 'Ristorazione');

INSERT INTO TIPO_VEICOLO (nome, capienza, peso, descrizione)
VALUES ('Punto', '300', '1300', 'Veicolo utilitario per spostamenti di lavoro'),
('Giulietta', '330', '1500', 'Veicolo utilitario per spostamenti di lavoro'),
('Panda', '280', '1200', 'Veicolo utilitario per spostamenti di lavoro'),
('Ducato', '17000', '2000', 'Veicolo per trasporto di medie quantità di merce'),
('Transporter', '15000', '1800', 'Veicolo per trasporto di medie quantità di merce'),
('Daily', '13000', '1700', 'Veicolo per trasporto di medie quantità di merce');

INSERT INTO FATTURA (numero, data_emissione, descrizione, totale)
VALUES (0001234, '2020-07-10', 'Fornitura di lotto di registratori per S.p.A', 60000),
(0001934, '2019-07-10', 'Fornitura di lotto di registratori per S.p.A', 6500),
(0012345, '2018-07-10', 'Fornitura di lotto di registratori per S.p.A', 25000),
(0054321, '2020-07-10', 'Fornitura di lotto di registratori per S.p.A', 8750),
(1236876, '2019-08-05', 'Fornitura di lotto di registratori per S.p.A', 25000),
(0089755, '2020-08-05', 'Fornitura di lotto di registratori per S.p.A', 46000),
(0012434, '2019-11-27', 'Fornitura di lotto di registratori per S.p.A', 40500),
(0201934, '2020-11-27', 'Fornitura di lotto di registratori per S.p.A', 5000),
(1012345, '2019-07-28', 'Fornitura di lotto di registratori per S.p.A', 15000),
(0254321, '2020-07-28', 'Fornitura di lotto di registratori per S.p.A', 3000),
(1996876, '2019-03-08', 'Fornitura di lotto di registratori per S.p.A', 5300),
(0004321, '2020-03-08', 'Fornitura di lotto di registratori per S.r.l.', 13000),
(0066554, '2020-04-15', 'Fornitura di lotto di registratori per S.r.l.', 3000),
(0975344, '2020-04-15', 'Fornitura di lotto di registratori per S.r.l.', 8000),
(0004320, '2019-07-31', 'Fornitura di lotto di registratori per S.r.l.', 13000),
(1204333, '2020-07-31', 'Fornitura di lotto di registratori per S.r.l.', 4700),
(0204321, '20219-07-31', 'Fornitura di lotto di registratori per S.r.l.', 8000),
(0466554, '2020-05-09', 'Fornitura di lotto di registratori per S.r.l.', 7200),
(0975554, '2020-05-09', 'Fornitura di lotto di registratori per S.r.l.', 6000),
(0004520, '2019-05-09', 'Fornitura di lotto di registratori per S.r.l.', 6000),
(0554333, '2020-07-10', 'Fornitura di lotto di registratori per S.r.l.', 13000),
(1004311, '2019-07-10', 'Fornitura di lotto di registratori per privati.', 3300);

INSERT INTO FORNITORE (p_iva_f, nome, contatto)
VALUES ('54967315927','Amazon','assistenzaclienti@amazon.com'),
('18967135246','TecnoCassa','contatti@tecnocassa.it'),
('86425869468','Olivetti S.p.A.','vendite@olivetti.it'),
('59761584239','Gruppo Pixel','pixel@gmail.com'),
('74139851865','Gruppo CEI','vendite@cei.it');

INSERT INTO REPARTO (nome, descrizione)
VALUES ('Ricevimento', 'Area di scarico facilitato per la merce sui mezzi'),
('Controllo', 'Area per il controllo qualità del prodotto'),
('Stoccaggio', 'Area stoccaggio merce'),
('Picking', 'Partendo da unità di carico piene si vanno a formare unità di carico miste'),
('Imballaggio', 'Consolidare, imballare e caricare i prodotti sui mezzi'),
('Spedizione', 'Vengono preparate le spedizioni');

INSERT INTO VEICOLO (nome, targa)
VALUES ('Punto', 'ER528FO'),
('Punto', 'FR319OD'),
('Panda', 'EQ671PS'),
('Panda', 'GA736VL'),
('Ducato', 'GA432AS'),
('Ducato', 'EE777TH'),
('Transporter', 'FA135XX'),
('Transporter', 'FD345WE'),
('Daily', 'ET734MN');

INSERT INTO REGISTRATORE (nome_modello, peso, dimensione, quant_disp, descrizione)
VALUES ('Form 100', 0.250, 1000, 1500, 'Registratore di cassa telematico più versatile della gamma'),
('Form 200', 0.300, 1000, 700, 'Nuovo registratore di cassa telematico dal design moderno e curato'),
('Form 200plus', 0.450, 1000, 700, 'Registratore di cassa telematico con tastiera ibrida, touch screen e tradizionale'),
('Nettuna 700', 1.000, 1000, 300, 'Registratore progettato per offrire una risposta professionale a qualsiasi esigenza'),
('Nettuna 300', 0.750, 1000, 200, 'Registratore compatto, curato nei dettagli, con prestazioni tecniche avanzate');

INSERT INTO FORNITURA (quantita, data, P_IVA_F, nome_modello)
VALUES (100, '2019-08-19', '54967315927', 'Form 100'),
(200, '2020-09-02', '18967135246', 'Form 200'),
(150, '2019-11-29', '86425869468', 'Form 200plus'),
(50, '2020-07-02', '59761584239', 'Nettuna 700'),
(75, '2019-02-01', '74139851865', 'Nettuna 300');

INSERT INTO SCAFFALE (ID, capacita, nome_modello)
VALUES (0, 300, 'Form 100'),
(1, 500, 'Form 100'),
(2, 500, 'Form 100'),
(3, 500, 'Form 100'),
(4, 300, 'Form 200'),
(5, 300, 'Form 200'),
(6, 300, 'Form 200'),
(7, 500, 'Form 200plus'),
(8, 500, 'Form 200plus'),
(9, 500, 'Nettuna 700'),
(10, 500, 'Nettuna 300');

INSERT INTO DIPENDENTE (matricola, nome, cognome, data_assunzione, data_nascita, nome_reparto)
VALUES (139858, 'Federico', 'Boccaletti', '2016-08-10', '1986-05-11', 'Ricevimento'),
(134598, 'Federico', 'Boccaletti', '2018-09-10', '1996-09-19', 'Imballaggio'),
(123456, 'Lorenzo', 'Bianchi', '2013-05-15', '1988-11-17', 'Stoccaggio'),
(567890, 'Mattia', 'Innocenzi', '2019-10-11', '1983-04-15', 'Picking'),
(234567, 'Davide', 'Beltrami', '2016-08-09', '1982-04-14', 'Picking'),
(124578, 'Enea', 'Giglioli', '2016-08-10', '1980-06-11', 'Imballaggio'),
(189762, 'Federico', 'Ciampà', '2017-07-10', '1985-09-12', 'Controllo'),
(175845, 'Michele', 'Facchetti', '2010-02-02', '1986-10-15', 'Picking'),
(556677, 'Simone', 'Miselli', '2016-02-02', '1997-11-19', 'Stoccaggio'),
(112233, 'Stefano', 'Ruggieri', '2011-12-09', '1998-12-20', 'Controllo'),
(445568, 'Andrea', 'Schwarz', '2012-11-16', '1999-07-23', 'Spedizione'),
(990088, 'Andrea', 'Albano', '2013-10-22', '1978-06-30', 'Picking'),
(126790, 'Giacomo', 'Simoncini', '2014-09-23', '1989-01-31', 'Ricevimento'),
(197655, 'Jack', 'Moscato', '2015-01-15', '1991-02-22', 'Picking'),
(168798, 'William', 'Grillo', '2013-02-25', '1995-03-27', 'Spedizione'),
(245786, 'Chiara', 'Fornaciari', '2016-01-31', '1979-03-12', 'Controllo'),
(123459, 'Alessia', 'Mennillo', '2017-01-30', '1996-05-09', 'Spedizione'),
(123657, 'Sofia', 'Spinelli', '2018-06-23', '1994-09-08', 'Imballaggio'),
(138906, 'Giulia', 'Manzoni', '2019-06-14', '1991-08-04', 'Ricevimento'),
(123455, 'Enrica', 'Lanzafame', '2020-05-14', '2000-07-12', 'Spedizione');

INSERT INTO TIPO_CONTRATTO (nome)
VALUES ('Apprendistato'), ('Tirocinio'), ('Part-time'), ('Full-time'), ('A contratto');

INSERT INTO CONTRATTO (id, nome, matricola, stipendio, orario)
VALUES (1, 'Apprendistato', 139858, 2000, 8),
(2, 'Part-time', 134598, 1500, 5),
(3, 'Full-time', 123456, 2500, 8),
(4, 'A contratto', 567890, 1750, 4),
(5, 'Tirocinio', 234567, 1000, 5),
(6, 'A contratto', 124578, 1800, 8),
(7, 'Part-time', 189762, 1400, 5),
(8, 'Apprendistato', 175845, 1600, 8),
(9, 'A contratto', 556677, 1800, 8),
(10, 'A contratto', 112233, 1800, 8),
(11, 'Full-time', 445568, 2100, 8),
(12, 'Part-time', 990088, 2200, 4),
(13, 'A contratto', 197655, 1800, 8),
(14, 'Tirocinio', 168798, 1200, 4),
(15, 'A contratto', 245786, 1300, 8),
(16, 'A contratto', 123459, 1100, 8),
(17, 'A contratto', 123657, 1000, 8),
(18, 'Apprendistato', 124578, 900, 8),
(19, 'A contratto', 138906, 1700, 8),
(20, 'A contratto', 123455, 1800, 8);

INSERT INTO IMPIEGATO (matricola, cf)
VALUES (138906, 'ZVJMBS46S52I191T'),
(123455, 'CLNLQD54H62L466M'),
(245786, 'SVGZLT63A54E570Y'),
(126790, 'VNDRFJ67C27A953S'),
(556677, 'JLPLPQ60D41A084F');

INSERT INTO MAGAZZINIERE(matricola, patente_carr_elevatore)
VALUES (134598, '1'),
(567890, '0'),
(445568, '0'),
(189762, '1'),
(139858, '0'),
(123456, '0'),
(234567, '1'),
(124578, '0'),
(175845, '0'),
(112233, '0'),
(990088, '1'),
(197655, '0'),
(123657, '1'),
(123459, '1');

INSERT INTO AUTISTA (matricola, tipo_patente)
VALUES (123459, 'B'),
(445568, 'B'),
(168798, 'C'),
(123455, 'C');

INSERT INTO GUIDA (data, nome, targa, matricola)
VALUES ('2019-11-02', 'Punto', 'ER528FO', 123459),
('2020-05-02', 'Punto', 'FR319OD', 123459),
('2020-06-15', 'Panda', 'EQ671PS', 445568),
('2019-03-22', 'Panda', 'GA736VL', 123459),
('2019-11-12', 'Ducato', 'GA432AS',123459),
('2019-12-22', 'Ducato', 'EE777TH', 123459),
('2019-12-22', 'Transporter', 'FA135XX', 168798),
('2019-12-23', 'Transporter', 'FD345WE', 123455),
('2019-12-23', 'Daily', 'ET734MN', 168798),
('2019-11-11', 'Punto', 'ER528FO', 445568),
('2019-12-24', 'Punto', 'ER528FO', 123459),
('2019-12-27', 'Punto', 'FR319OD', 445568),
('2019-12-28', 'Panda', 'GA736VL', 123459),
('2020-01-07', 'Transporter', 'FA135XX', 123455),
('2020-01-15', 'Daily', 'ET734MN', 168798),
('2019-09-23', 'Ducato', 'EE777TH', 123459),
('2020-02-27', 'Ducato', 'GA432AS', 445568),
('2020-02-28', 'Ducato', 'GA432AS', 123459),
('2020-04-15', 'Transporter', 'FD345WE', 123455),
('2020-07-19', 'Daily', 'ET734MN', 168798);

INSERT INTO SEDE (comune, provincia, CAP, indirizzo, P_IVA_F, P_IVA_C)
VALUES ('Reggio Emilia', 'RE', '42123', 'Via Francia 24', NULL, '11122233300'),
('Reggio Emilia', 'RE', '42124', 'Via Bismantova 9', NULL, '12345678900'),
('Bologna', 'BO', '40121', 'Via Saragozza 15', NULL, '08978675600'),
('Mantova', 'MN', '46100', 'Via Girolamo 13', NULL, '16457382980'),
('Sassuolo', 'MO', '41049', 'Via Cavour 56', NULL, '79685718274'),
('Reggio Emilia', 'RE', '42124', 'Via Galimberti 12', NULL, '47384389284'),
('Modena', 'MO', '41121', 'Via Garibaldi 5', NULL, '90329583855'),
('Reggio Emilia', 'RE', '42122', 'Via Pasteur 12', NULL, '10395832935'),
('Reggio Emilia', 'RE', '42122', 'Via Danimarca 13', NULL, '64821910928'),
('Padova', 'PD', '35121', 'Via Svevo 12', NULL, '01093853923'),
('Bologna', 'BO', '40121', 'Via Saba 10', NULL, '32903953679'),
('Milano', 'MI', '20121', 'Via Barcellona 34', NULL, '09864902245'),
('Piacenza', 'PC', '29121', 'Via Massenet 14', '54967315927', NULL),
('Parma', 'PR', '43121', 'Via Balzac 34', '18967135246', NULL),
('Parma', 'PR', '43121', 'Via Stendhal 120', '86425869468', NULL),
('Piacenza', 'PC', '29121', 'Via Vico 11', '59761584239', NULL),
('Modena', 'MO', '41121', 'Via della Liberazione 111', '74139851865', NULL);

INSERT INTO SPEDIZIONE (id, data_prevista_consegna, stato, nome, targa)
VALUES (5698746, '2020-07-10', 'Consegnato', 'Transporter','FA135XX'),
(7845692, '2020-08-05', 'In preparazione', 'Ducato', 'EE777TH'),
(6532941, '2020-11-27', 'In preparazione','Daily','ET734MN'),
(1596374, '2020-07-28', 'In transito', 'Transporter','FD345WE'),
(7835842, '2020-03-08', 'Consegnato', 'Ducato','GA432AS'),
(1674298, '2020-04-15', 'Consegnato', 'Daily','ET734MN'),
(4961873, '2020-07-31', 'In preparazione', 'Ducato','GA432AS'),
(7931456, '2020-05-09', 'Consegnato', 'Transporter','FD345WE'),
(6984235, '2020-07-10', 'In transito', 'Daily','ET734MN');

INSERT INTO ORDINE (p_iva_c, numero, quantita, costo, nome_modello, ID)
VALUES (11122233300, 0004321, 100, 10000, 'Form 100', 5698746),
('16457382980', 0001234, 50, 55000, 'Form 100', 5698746),
('09864902245', 1004311, 3, 3000, 'Nettuna 700', 5698746),
('11122233300', 0066554, 20, 2500, 'Form 100', 7845692),
('08978675600', 0975344, 7, 7000, 'Nettuna 700', 7845692),
('79685718274', 0001934, 10, 5000, 'Nettuna 300', 6532941),
('11122233300', 0004320, 50, 10000, 'Form 200', 6532941),
('47384389284', 1204333, 40, 4000, 'Form 100', 1596374),
('79685718274', 0012345, 100, 20000, 'Form 200', 1596374),
('32903953679', 0204321, 70, 7000, 'Form 100', 1596374),
('32903953679', 0466554, 40, 6500, 'Form 200plus', 7835842),
('08978675600', 0975554, 25, 5000, 'Form 200', 7835842),
('32903953679', 0004520, 50, 5000, 'Form 100', 7835842),
('10395832935', 0054321, 30, 6000, 'Form 200', 1674298),
('79685718274', 1236876, 100, 20000, 'Form 200', 1674298),
('08978675600', 0554333, 110, 11000, 'Form 100', 1674298),
('01093853923', 0089755, 80, 40000, 'Nettuna 300', 4961873),
('16457382980', 0012434, 150, 35000, 'Form 200plus', 4961873),
('64821910928', 0201934, 20, 4000, 'Form 200', 7931456),
('90329583855', 1012345, 13, 13000, 'Nettuna 700', 7931456),
('12345678900', 0254321, 12, 2400, 'Form 200', 6984235),
('01093853923', 1996876, 46, 4600, 'Form 100', 6984235);
