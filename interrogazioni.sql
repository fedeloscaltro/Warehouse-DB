--interrogazioni sul db
--1) Il registratore meno acquistato
SELECT r.nome_modello, SUM(quantita) AS quantita
FROM registratore AS r, ordine AS o
WHERE r.nome_modello = o.nome_modello
GROUP BY r.nome_modello
ORDER BY SUM(quantita)
LIMIT 1;

--2) Visualizzare in ordine decrescente, in base all’utilizzo, i veicoli usati per le consegne
SELECT nome, targa, COUNT(targa)
FROM GUIDA
GROUP BY targa, nome
ORDER BY COUNT(targa) DESC;

--3) Il cliente che ha comprato più registratori (di qualsiasi modello)
SELECT nome, SUM(quantita)
FROM CLIENTE C, ORDINE O
WHERE C.P_IVA_C = O.P_IVA_C
GROUP BY nome
ORDER BY SUM(quantita) DESC
LIMIT 1;

--4) Ordinare in senso decrescente il numero di registratori in magazzino per ogni modello
SELECT nome_modello, quant_disp
FROM REGISTRATORE
GROUP BY nome_modello
ORDER BY quant_disp DESC;

--5) Numero medio di registratori acquistati da ciascun cliente
SELECT p_iva_c as cliente, ROUND(AVG(quantita), 2) AS acquisti_medi
FROM ORDINE
GROUP BY p_iva_c;

--6) I clienti che non hanno effettuato ordini nell’ultimo anno solare
SELECT nome as nome_cliente
FROM CLIENTE
WHERE p_iva_c NOT IN (SELECT cl.p_iva_c
                     FROM CLIENTE cl, ORDINE o, FATTURA f
                     WHERE cl.p_iva_c = o.p_iva_c
                      AND o.numero = f.numero
                      AND f.data_emissione >= '2020-01-01');

--7) Stipendio medio per ogni tipo di contratto
SELECT nome, AVG(stipendio)
FROM contratto
GROUP BY nome;

--8) L’ambito lavorativo più remunerante
SELECT ambito_lavorativo, SUM(costo)
FROM cliente AS c, ordine AS o
WHERE c.P_IVA_C = o.P_IVA_C
GROUP BY ambito_lavorativo
ORDER BY SUM(costo) DESC
LIMIT 1;

--9) Identificare chi ha effettuato consegne nel 2019 ma non nel 2020
SELECT matricola, nome, cognome
FROM DIPENDENTE
WHERE matricola NOT IN (SELECT d.matricola
                  FROM GUIDA gg, DIPENDENTE d, AUTISTA au
                  WHERE gg.matricola = d.matricola
                   AND d.matricola = au.matricola
                   AND gg.data >= '2020-01-01');

--10) Elencare chi ha effettuato un ordine ma non l’ha ancora ricevuto
SELECT DISTINCT c.nome
FROM CLIENTE as c, ORDINE as o, SPEDIZIONE as s
WHERE c.P_IVA_C = o.P_IVA_C
AND o.ID = s.ID
AND o.id NOT IN (
    SELECT ID
    from SPEDIZIONE
    where stato = 'Consegnato'
);

--11) La provincia con più fornitori
SELECT provincia, COUNT(provincia)
FROM sede AS s, fornitore AS f
WHERE s.P_IVA_F = f.P_IVA_F
GROUP BY provincia
ORDER BY COUNT(provincia) DESC
LIMIT 1;

--12) Il reparto con il maggior numero di dipendenti
SELECT nome_reparto, COUNT(*) AS numero_dipendenti
FROM DIPENDENTE
GROUP BY (nome_reparto)
ORDER BY COUNT(*) DESC
LIMIT 1;
