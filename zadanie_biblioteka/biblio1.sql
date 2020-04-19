CREATE TABLE autor (
	id SERIAL NOT NULL PRIMARY KEY,
	imie VARCHAR(40) NOT NULL,
	nazwisko VARCHAR(40) NOT NULL
);

CREATE TABLE CZYTELNIK (
	nr_karty SERIAL NOT NULL PRIMARY KEY,
	imię VARCHAR(40) NOT NULL,
	nazwisko VARCHAR(40) NOT NULL
);

CREATE TABLE ksiazka (
	nr_inw SERIAL NOT NULL PRIMARY KEY,
	tytuł VARCHAR(40) NOT NULL,
	wydawnciwto VARCHAR(40) NOT NULL,
	cena INT NOT NULL,
	rok DATE NOT NULL,
	data timestamp NOT NULL,
	nr_karty INT,
	autor_id INT NOT NULL,
	data_wypozyczenia DATE,

	
	CONSTRAINT autor_fk FOREIGN KEY(autor_id) REFERENCES autor(id)
	ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT nr_karty_fk FOREIGN KEY(nr_karty) REFERENCES CZYTELNIK(nr_karty)
	ON UPDATE CASCADE ON DELETE SET NULL
);
