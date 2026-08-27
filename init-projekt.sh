#!/bin/bash

# 1. Fråga efter GitHub-adressen (gärna SSH-varianten)
echo "Klistra in SSH- eller HTTPS-länken till ditt nya GitHub-repo:"
read -r repo_url

if [ -z "$repo_url" ]; then
    echo "Fel: Du måste ange en GitHub-länk!"
    exit 1
fi

# 2. Initiera Git i mappen
echo "Initierar Git-repository..."
git init

# 3. Skapa en standard .gitignore och lägg till skriptet direkt
echo "Skapar .gitignore..."
echo "init-projekt.sh" >> .gitignore
echo "uppdatera.sh" >> .gitignore

# 4. Lägg till filer och koppla till GitHub
git add .
git commit -m "Första versionen"

# Sätt huvudgrenen till 'main' (standard på GitHub idag)
git branch -M main

echo "Kopplar projektet till GitHub..."
git remote add origin "$repo_url"

# 5. Bekräfta innan sista steget (push)
echo ""
echo "Allt är förberett! Tryck på [ENTER] för att skicka upp första versionen till GitHub."
read -r

git push -u origin main

echo ""
echo "Klart! Ditt nya projekt är nu live på GitHub."
read -r
