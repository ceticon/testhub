# GitHub för Raspberry Pi-projekt

Denna manual beskriver hur jag använder GitHub som backup och versionshantering för mina Raspberry Pi-projekt.

---

# Engångsinställning för GitHub-token (HTTPS)

Aktivera lagring av credentials:

```bash
git config --global credential.helper store
```

Kontrollera:

```bash
git config --global credential.helper
```

Svar:

```text
store
```

## Första gången jag pushar

```bash
git push
```

Ange:

```text
Username: ceticon
Password: <GitHub Personal Access Token>
```

Git sparar då tokenen automatiskt i:

```bash
~/.git-credentials
```

---

# Standard .gitignore för Python

```text
myenv/
myvenv/
venv/

__pycache__/
*.pyc

.env
.vscode/
*.swp
```

---

# Skapa nytt projekt på GitHub

1. Skapa repository på GitHub.
2. Gå till projektmappen:

```bash
cd ~/Documents/Code/Python/Projects/MittProjekt
```

3. Initiera Git:

```bash
git init
```

4. Lägg till filer:

```bash
git add .
```

5. Kontrollera:

```bash
git status
```

6. Skapa första commit:

```bash
git commit -m "Första versionen"
```

7. Koppla GitHub:

```bash
git remote add origin https://github.com/ceticon/MittProjekt.git
```

8. Kontrollera remote:

```bash
git remote -v
```

9. Byt till main:

```bash
git branch -M main
```

10. Ladda upp:

```bash
git push -u origin main
```

---

# Uppdatera befintligt projekt

```bash
git status
git add .
git commit -m "Beskrivning av ändringen"
git push
```

---

# README.md

README.md visas automatiskt på GitHub-projektets startsida.

---

# Python-paket

Skapa requirements.txt:

```bash
source myenv/bin/activate
pip freeze > requirements.txt
```

Lägg upp på GitHub:

```bash
git add requirements.txt
git commit -m "Uppdaterade requirements"
git push
```

Installera på annan Raspberry Pi:

```bash
python3 -m venv myenv
source myenv/bin/activate
pip install -r requirements.txt
```

---

# Ny Raspberry Pi

```bash
git clone https://github.com/ceticon/MittProjekt.git
cd MittProjekt
python3 -m venv myenv
source myenv/bin/activate
pip install -r requirements.txt
```

---

# Vanliga kontrollkommandon

```bash
git status
git log --oneline
git remote -v
git ls-files
```

---

# Vanliga fel

## origin already exists

```bash
git remote remove origin
git remote add origin https://github.com/ceticon/MittProjekt.git
```

## Repository not found

```bash
git remote -v
```

## Virtuell miljö laddas upp

```bash
git rm -r --cached myenv
```

Kontrollera att `.gitignore` innehåller:

```text
myenv/
```

## GitHub blockerar push på grund av hemligheter

Lägg aldrig tokens, lösenord eller API-nycklar i projektfiler.

---

# SSH

Kontrollera nycklar:

```bash
ls -la ~/.ssh
```

Skapa ny nyckel:

```bash
ssh-keygen -t ed25519 -C "din_epost@example.com"
```

Visa publik nyckel:

```bash
cat ~/.ssh/id_ed25519.pub
```

Testa:

```bash
ssh -T git@github.com
```

SSH-URL:

```text
git@github.com:ceticon/MittProjekt.git
```

---

# Min dagliga rutin

```bash
git status
git add .
git commit -m "Beskrivning av ändringen"
git push
```

---

# Backup-strategi

Lägg upp:

```text
README.md
requirements.txt
*.py
*.c
*.cpp
*.h
```

Lägg inte upp:

```text
myenv/
venv/
__pycache__/
.env
*.log
*.swp
```
