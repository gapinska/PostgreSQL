CREATE TABLE autor (
	id INT NOT NULL,
	imie VARCHAR(25) NOT NULL,
	nazwisko VARCHAR(25) NOT NULL,
	CONSTRAINT autor_pk PRIMARY KEY(id)
);

CREATE TABLE ksiazka (
	kod INT NOT NULL,
	tytul VARCHAR(40) NOT NULL,
	CONSTRAINT ksiazka_pk PRIMARY KEY(kod)
);

CREATE TABLE ksiazka_autor (
	id INT NOT NULL,
	kod_ksiazka INT NOT NULL,
	id_autor INT NOT NULL,
	CONSTRAINT ksiazka_autor_pk PRIMARY KEY(id),
	
	CONSTRAINT kod_fk FOREIGN KEY(kod_ksiazka) REFERENCES ksiazka(kod)
	ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT autor_fk FOREIGN KEY(id_autor) REFERENCES autor(id)
	ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE wydanie (
	id INT NOT NULL,
	wydawnciwto VARCHAR(20) NOT NULL,
	cena INT NOT NULL,
	rok DATE NOT NULL,
	kod_ksiazka INT,
	
	CONSTRAINT wydanie_pk PRIMARY KEY(id),
	
	CONSTRAINT id_ksiazka_fk FOREIGN KEY (kod_ksiazka) REFERENCES ksiazka(kod)
	ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE czytelnik (
	nr_karty CHAR(6) NOT NULL,
	imie VARCHAR(25) NOT NULL,
	nazwisko VARCHAR(25) NOT NULL,
	CONSTRAINT czytelnik_pk PRIMARY KEY(nr_karty)
);


CREATE TABLE egzemplarz (
	nr_inw INT NOT NULL,
	kod INT NOT NULL,
	data_od timestamp,
	nr_karty CHAR(6),
	
	CONSTRAINT egzemplarz_pk PRIMARY KEY(nr_inw),
	
	CONSTRAINT kodegz_fk FOREIGN KEY (kod) REFERENCES ksiazka(kod)
	ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT nr_karty_fk FOREIGN KEY(nr_karty) REFERENCES CZYTELNIK(nr_karty)
	ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE egzemplarz_czytelnik (
	id INT NOT NULL,
	nr_inw INT NOT NULL,
	nr_karty CHAR(6) NOT NULL,
	data_od DATE NOT NULL,
	data_do DATE NOT NULL,

	CONSTRAINT egzemplarz_czytelnik_pk PRIMARY KEY(id),
	
	CONSTRAINT nr_kartyegz_fk FOREIGN KEY (nr_karty) REFERENCES czytelnik(nr_karty)
	ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT nr_inw_fk FOREIGN KEY (nr_inw) REFERENCES egzemplarz(nr_inw)
	ON UPDATE NO ACTION ON DELETE NO ACTION
);






