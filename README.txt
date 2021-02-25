Versione minima richiesta di PostgreSQL: 12.2

Modalità con file di backup:
1- Avviare il client di Postgres(pgAdmin) nel browser predefinito
2- Inserire la password del proprio utente(assicurandosi di avere i privilegi di creazione)
3- Aprendo la cartella dei Server andare sul server desiderato e poi, con tasto destro sui Database e selezionare la creazione di un nuovo database con nome a piacere
4- Fare click col tasto destro sul database appena creato e selezionare "Restore..." 
5- Scegliere come file di restore il file "script.backup" e lanciare il job di restore

Modalità con interfaccia grafica:
1- Avviare il client di Postgres(pgAdmin) nel browser predefinito
2- Inserire la password del proprio utente(assicurandosi di avere i privilegi di creazione)
3- Aprendo la cartella dei Server andare sul server desiderato e poi, con tasto destro sui Database, selezionare la creazione di un nuovo database con nome a piacere
4- Aprire Query Tool all'interno del nuovo database creato
5- Aprire e copiare il contenuto dei files nella cartella nel seguente ordine: creazione_tabelle.sql, inserimento_dati.sql, creazione_trigger.sql

Modalità da linea di comando di Windows:
1- Nella ricerca di windows aprire il programma "psql"
2- Effettuare l'accesso al dbms con il proprio account che abbia privilegi di creazione
3- Utilizzando il comando \cd spostarsi nella cartella dove è stato scaricato il progetto
4- Una volta che si è nella cartella eseguire in sequenza i comandi di creazione
5- "\i creazione_database.sql"
6- Spostarsi all'interno del database con "\c Progetto"
7- "\i creazione_tabelle.sql"
8- "\i inserimento_dati.sql"
9- "\i creazione_trigger.sql"

Per testare il funzionamento delle operazioni descritte nella documentazione:
Aprire il file "interrogazioni.sql", copiarle e incollarle una alla volta nel Query Tool

Per testare il funzionamento delle operazioni di modifica ed eliminazione di dati:
Aprire il file "upd_del.sql", copiarle e incollarle una alla volta nel Query Tool