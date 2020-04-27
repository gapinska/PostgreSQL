SELECT imie, nazwisko, zamowienie.nr AS zamowienie_nr
   FROM klient INNER JOIN zamowienie
   ON klient.nr=zamowienie.klient_nr
   ORDER BY nazwisko
;

SELECT opis, zamowienie_nr
   FROM towar INNER JOIN pozycja
   ON towar.nr=pozycja.towar_nr
;

SELECT opis, zamowienie_nr
   FROM towar, pozycja
   WHERE towar.nr=pozycja.towar_nr
;

SELECT DISTINCT ON (1) opis
   FROM towar INNER JOIN pozycja
   ON towar.nr=pozycja.towar_nr
;

SELECT DISTINCT ON (1) opis
FROM towar, pozycja
WHERE towar.nr=pozycja.towar_nr
;
