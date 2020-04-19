CREATE TABLE ksiazka (
	kod INT NOT NULL,
	tytul VARCHAR(40) NOT NULL,
	wydawnciwto VARCHAR(20) NOT NULL,
	cena INT NOT NULL,
	rok DATE NOT NULL,
	autor_imie_nazwisko VARCHAR(40) NOT NULL,
	
	CONSTRAINT ksiazka_pk PRIMARY KEY(kod)
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
	data timestamp,
	nr_karty CHAR(6),
	
	CONSTRAINT egzemplarz_pk PRIMARY KEY(nr_inw),
	
	CONSTRAINT kod_fk FOREIGN KEY (kod) REFERENCES ksiazka(kod)
	ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT nr_karty_fk FOREIGN KEY(nr_karty) REFERENCES CZYTELNIK(nr_karty)
	ON UPDATE CASCADE ON DELETE SET NULL
);

