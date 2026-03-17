param(
    # Dichiara il blocco dei parametri dello script.
    # Serve per dire quali valori devono essere passati quando lanci il file .ps1

    [Parameter(Mandatory=$true)]
    # Questo attributo dice che il parametro è obbligatorio.
    # Se non passi il nome del bucket, PowerShell ti chiederà di inserirlo.

    [string]$BucketName
    # Definisce un parametro chiamato BucketName di tipo stringa.
    # Qui dentro finirà il nome del bucket S3, per esempio:
    # s3-foundations-lab-davide-monaco-20260317-5524
)

Write-Host "1) Listing all objects"
# Stampa a video un messaggio per farti capire che sta iniziando il primo passaggio:
# la lista di tutti gli oggetti presenti nel bucket.

aws s3 ls "s3://$BucketName/" --recursive
# Esegue il comando AWS CLI per elencare gli oggetti dentro il bucket S3.
# "s3://$BucketName/" indica il bucket su cui lavorare.
# --recursive vuol dire: mostra tutti gli oggetti in tutti i prefix, non solo il primo livello.
# Quindi vedrai raw/, processed/, archive/ e tutti i file contenuti.

Write-Host ""
# Stampa una riga vuota a schermo.
# Serve solo a rendere l'output più leggibile.

Write-Host "2) Copying one object from raw/ to processed/"
# Stampa un messaggio che ti avvisa del secondo passaggio:
# copia di un file dal prefix raw al prefix processed.

aws s3 cp `
  "s3://$BucketName/raw/raw-01.txt" `
  "s3://$BucketName/processed/copied-from-raw-01.txt"
# aws s3 cp = comando AWS CLI per copiare un file o oggetto.
# Il carattere ` a fine riga in PowerShell serve per continuare il comando sulla riga successiva.
# Primo percorso: oggetto sorgente, cioè raw/raw-01.txt nel bucket.
# Secondo percorso: oggetto destinazione, cioè processed/copied-from-raw-01.txt nello stesso bucket.
# In pratica prende raw/raw-01.txt e ne crea una copia dentro processed/ con un nome nuovo.

Write-Host ""
# Altra riga vuota per separare visivamente i passaggi.

Write-Host "3) Deleting test files under raw/test/"
# Stampa un messaggio che spiega il terzo passaggio:
# cancellazione dei file temporanei di test.

aws s3 rm "s3://$BucketName/raw/test/" --recursive
# aws s3 rm = comando AWS CLI per eliminare oggetti da S3.
# Il percorso s3://$BucketName/raw/test/ indica il prefix sotto cui stanno i file di test.
# --recursive vuol dire: cancella tutto ciò che si trova sotto quel prefix.
# Quindi eliminerà, per esempio:
# raw/test/test-01.tmp
# raw/test/test-02.tmp
# Attenzione: con --recursive cancella tutti gli oggetti sotto quel percorso, non uno solo.

Write-Host ""
# Riga vuota per tenere ordinato l'output finale.

Write-Host "4) Final listing"
# Stampa il messaggio del quarto passaggio:
# elenco finale del contenuto del bucket dopo copia e cancellazione.

aws s3 ls "s3://$BucketName/" --recursive
# Fa di nuovo la lista completa del bucket.
# Serve per verificare il risultato finale:
# - il file copiato dentro processed/ deve esserci
# - i file sotto raw/test/ non devono più esserci
# - gli altri file devono essere ancora presenti