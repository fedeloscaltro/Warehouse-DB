--codice per la creazione di tutte le tabelle del database
CREATE TABLE CLIENTE (
    P_IVA_C CHAR(11),
    nome VARCHAR(50) NOT NULL,
    contatto VARCHAR(100) NOT NULL,
    ambito_lavorativo VARCHAR(100),
    PRIMARY KEY (P_IVA_C)
);

CREATE TABLE TIPO_VEICOLO (
    nome VARCHAR(30),
    capienza FLOAT NOT NULL CHECK (capienza >= 0),
    peso FLOAT CHECK (peso >= 0),
    descrizione VARCHAR(100),
    PRIMARY KEY (nome)
);

CREATE TABLE TIPO_CONTRATTO(
    nome VARCHAR(30),
    PRIMARY KEY (nome)
);

CREATE TABLE FATTURA(
    numero INT,
    data_emissione DATE NOT NULL,
    descrizione VARCHAR(100),
    totale FLOAT NOT NULL CHECK (totale >= 0),
    PRIMARY KEY (numero)
);

CREATE TABLE FORNITORE(
    P_IVA_F CHAR(11),
    nome VARCHAR(50) NOT NULL,
    contatto VARCHAR(100),
    PRIMARY KEY (P_IVA_F)
);

CREATE TABLE REPARTO(
    nome VARCHAR(30),
    descrizione VARCHAR(100),
    PRIMARY KEY (nome)
);

CREATE TABLE VEICOLO(
   nome VARCHAR(30),
   targa CHAR(7),
   PRIMARY KEY (nome, targa),
   FOREIGN KEY (nome) REFERENCES TIPO_VEICOLO
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE SPEDIZIONE(
    ID INT,
    data_prevista_consegna DATE NOT NULL,
    stato VARCHAR(30),
    nome VARCHAR(30) NOT NULL,
    targa CHAR(7) NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (nome, targa) REFERENCES VEICOLO
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE REGISTRATORE (
    nome_modello VARCHAR(30) NOT NULL,
    peso FLOAT NOT NULL CHECK (peso >= 0),
    dimensione FLOAT NOT NULL CHECK (dimensione >= 0),
    quant_disp INT NOT NULL CHECK (quant_disp >= 0),
    descrizione VARCHAR(100),
    PRIMARY KEY (nome_modello)
);

CREATE TABLE FORNITURA (
    quantita INT NOT NULL CHECK (quantita >= 0),
    data DATE NOT NULL,
    P_IVA_F CHAR(11) NOT NULL,
    nome_modello VARCHAR(30) NOT NULL,
    PRIMARY KEY (data, P_IVA_F, nome_modello),
    FOREIGN KEY (P_IVA_F) REFERENCES FORNITORE
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
    FOREIGN KEY (nome_modello) REFERENCES REGISTRATORE
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);

CREATE TABLE SCAFFALE(
    ID INT,
    capacita INT CHECK (capacita >= 0),
    nome_modello VARCHAR(30),
    PRIMARY KEY (ID),
    FOREIGN KEY (nome_modello) REFERENCES REGISTRATORE
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE DIPENDENTE(
    matricola VARCHAR(10),
    nome VARCHAR(15) NOT NULL,
    cognome VARCHAR(15) NOT NULL,
    data_assunzione DATE NOT NULL,
    data_nascita DATE NOT NULL,
    nome_reparto VARCHAR(30) NOT NULL,
    PRIMARY KEY(matricola),
    FOREIGN KEY (nome_reparto) REFERENCES REPARTO
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE SEDE(
    comune VARCHAR(30),
    provincia CHAR(2),
    CAP CHAR(5) NOT NULL,
    indirizzo VARCHAR(50) NOT NULL,
    P_IVA_F CHAR(11),
    P_IVA_C CHAR(11),
    PRIMARY KEY (comune, provincia,indirizzo),
    FOREIGN KEY (P_IVA_F) REFERENCES FORNITORE
    ON DELETE SET NULL
    ON UPDATE CASCADE,
    FOREIGN KEY (P_IVA_C) REFERENCES CLIENTE
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE MAGAZZINIERE(
    matricola VARCHAR(10),
    patente_carr_elevatore BIT,
    PRIMARY KEY(matricola, patente_carr_elevatore),
    FOREIGN KEY (matricola) REFERENCES DIPENDENTE
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);

CREATE TABLE AUTISTA(
    matricola VARCHAR(10),
    tipo_patente CHAR(3) NOT NULL,
    PRIMARY KEY(matricola, tipo_patente),
    FOREIGN KEY (matricola) REFERENCES DIPENDENTE
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);

CREATE TABLE IMPIEGATO(
    matricola VARCHAR(10),
    CF VARCHAR(16) NOT NULL,
    PRIMARY KEY (matricola, CF),
    FOREIGN KEY (matricola) REFERENCES DIPENDENTE
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);

CREATE TABLE GUIDA(
    data DATE,
    nome VARCHAR(30),
    targa CHAR(7),
    matricola VARCHAR(10),
    PRIMARY KEY (data, nome, targa, matricola),
    FOREIGN KEY (nome, targa) REFERENCES VEICOLO
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (matricola) REFERENCES DIPENDENTE
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE CONTRATTO(
    ID INT NOT NULL,
    nome VARCHAR(30),
    matricola VARCHAR(10),
    stipendio FLOAT NOT NULL CHECK (stipendio >= 0),
    orario INT CHECK (ORARIO >= 0),
    PRIMARY KEY (ID, nome),
    FOREIGN KEY (matricola) REFERENCES DIPENDENTE
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (nome) REFERENCES TIPO_CONTRATTO
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE ORDINE(
    P_IVA_C CHAR(11),
    numero INT NOT NULL CHECK (numero >= 0),
    quantita INT NOT NULL CHECK (quantita >= 0),
    costo INT NOT NULL CHECK (costo >= 0),
    nome_modello VARCHAR(30) NOT NULL,
    ID int,
    PRIMARY KEY (P_IVA_C, numero),
    FOREIGN KEY (numero) REFERENCES FATTURA
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (nome_modello) REFERENCES REGISTRATORE
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
    FOREIGN KEY (P_IVA_C) REFERENCES CLIENTE
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
    FOREIGN KEY (ID) REFERENCES SPEDIZIONE
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);
