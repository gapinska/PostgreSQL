SELECT *,(cena-koszt)*100/cena AS zysk FROM towar WHERE cena > 0 ORDER BY zysk DESC;

SELECT *, data_wysylki-data_zlozenia AS czas_realizacji FROM zamowienie ORDER BY czas_realizacji;
