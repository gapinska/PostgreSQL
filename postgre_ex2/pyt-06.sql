-- grupowanie i warunki dotyczące grup, funkcje agregujące,
-- zapytania zagnieżdżone (zagnieżdżenia nieskorelowane) cz.1:

-- sprawdź czy nazwiska powtarzają się, wypisz dane klientów
-- o powtarzających się nazwiskach
SELECT nazwisko FROM klient
;
SELECT DISTINCT nazwisko FROM klient
;
SELECT nazwisko,count (nazwisko) FROM klient GROUP BY nazwisko
;
SELECT nazwisko FROM klient GROUP BY nazwisko HAVING count (nazwisko) > 1
;
SELECT imie, nazwisko, miasto FROM klient 
   WHERE nazwisko IN (
      SELECT nazwisko FROM klient 
      GROUP BY nazwisko HAVING count (nazwisko) > 1
      )
;

-- zad P6: sprawdź czy ceny towarów powtarzają się; 
-- wypisz opis i ceny towarów o powtarzających się cenach;
-- to samo dla kosztu.

