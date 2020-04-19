SELECT * FROM klient WHERE miasto <> 'Gdańsk';
SELECT * FROM KLIENT WHERE telefon IS NULL;
SELECT * FROM KLIENT WHERE miasto <> 'Gdańsk' AND telefon IS NULL;
SELECT * FROM towar WHERE opis LIKE 'układanka%';
SELECT * FROM zamowienie WHERE data_wysylki IS NULL;
SELECT * FROM zamowienie WHERE data_wysylki BETWEEN '2019/02/01' AND '2019/02/28';
SELECT * FROM zamowienie WHERE data_wysylki IS NOT NULL;

