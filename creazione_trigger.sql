--codice per la creazione dei trigger per la gestione del dato derivato
CREATE FUNCTION nuovo_ordine() RETURNS trigger AS $$
DECLARE
    q1 INTEGER;
BEGIN
    SELECT quant_disp INTO q1
    FROM registratore AS r
    WHERE r.nome_modello = NEW.nome_modello;
    IF NEW.quantita > q1 THEN
           RAISE EXCEPTION 'Quantità maggiore della disponibilità in magazzino';
    ELSE
        UPDATE REGISTRATORE
        SET quant_disp = quant_disp - NEW.quantita
        WHERE NEW.nome_modello = nome_modello;
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER GESTIONE_ORDINE
AFTER INSERT ON ORDINE
FOR EACH ROW
EXECUTE PROCEDURE nuovo_ordine();

CREATE FUNCTION nuova_fornitura() RETURNS trigger AS $$
BEGIN
    IF NEW.quantita < 0 THEN
            RAISE EXCEPTION 'Quantità non ammessibile';
    END IF;    
    UPDATE REGISTRATORE
    SET quant_disp = quant_disp + NEW.quantita
    WHERE NEW.nome_modello = nome_modello;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER GESTIONE_FORNITURA
BEFORE INSERT ON FORNITURA
FOR EACH ROW
EXECUTE PROCEDURE nuova_fornitura();
