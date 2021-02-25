--Modifica dei dati
--1) Modifica stato e data di consegna di una spedizione in transito con codice ‘6984235’ in quanto è arrivata;
UPDATE SPEDIZIONE
SET data_prevista_consegna=current_date, stato='Consegnato'
WHERE id = 6984235;

--2) Modifica del contatto del fornitore con partita iva '74139851865' in 'venditeCEI@gmail.com'
UPDATE FORNITORE
SET contatto = 'venditeCEI@gmail.com'
WHERE p_iva_f = '74139851865';

--3) Cambio di tipo contratto per matricola numero 134598 da ‘Part-time’ in ‘Full-time’
UPDATE CONTRATTO
SET nome = ‘Full-time’
WHERE matricola = 134598; 


--Eliminazione dei dati
--1) Eliminazione di dipendenti con contratto di tipo ‘Tirocinio’
DELETE FROM CONTRATTO
WHERE nome = 'Tirocinio';

--2) Ipotesi di vendita o rottamazione dell’auto targata 'ER528FO'
DELETE FROM VEICOLO
WHERE targa = 'ER528FO';
--3) Eliminare tutte le fatture antecedenti il ‘2020-07-01’(primo semestre 2020)
DELETE FROM FATTURA
WHERE data_emissione < '2020-07-01';
