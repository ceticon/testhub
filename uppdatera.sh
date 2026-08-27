#!/bin/bash

# 1. Fråga efter commit-meddelande
echo "Vad är din kommentar (commit message)?"
read -r kommentar

# Om användaren inte skrev något, sätt en standardtext
if [ -z "$kommentar" ]; then
    kommentar="Uppdatering via skript"
fi

# 2. Lägg till alla ändringar
echo "Förbereder filer (git add .)..."
git add .

# 3. Visa vad som kommer att skickas och pausa
echo ""
echo "Följande ändringar kommer att sparas:"
git status -s
echo ""
echo "Tryck på [ENTER] för att godkänna och gå vidare, eller Ctrl+C för att avbryta."
read -r

# 4. Spara ändringarna lokalt
git commit -m "$kommentar"

# 5. Skicka till GitHub och pausa en sista gång
echo "Skickar till GitHub (git push)..."
git push

echo ""
echo "Klart! Tryck på [ENTER] för att stänga."
read -r
