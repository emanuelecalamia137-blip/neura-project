nano ~/Scrivania/chatgpt_terminal.sh
chmod +x ~/Scrivania/chatgpt_terminal.sh
~/Scrivania/chatgpt_terminal.sh
#!/bin/bash
# === Inserisci qui la tua API Key personale ===
API_KEY="INSERISCI_LA_TUA_API_KEY"
# === Inserimento domanda ===
read -p "Fai la tua domanda a ChatGPT: " domanda
# === Richiesta all'API di OpenAI ===
curl -s https://api.openai.com/v1/chat/completions   -H "Content-Type: application/json"   -H "Authorization: Bearer $API_KEY"   -d "{
    \"model\": \"gpt-3.5-turbo\",
    \"messages\": [
      {\"role\": \"user\", \"content\": \"$domanda\"}
    ]
  }" | jq -r '.choices[0].message.content'
#!/bin/bash
# === Inserisci qui la tua API Key personale ===
API_KEY="INSERISCI_LA_TUA_API_KEY"
# === Inserimento domanda ===
read -p "Fai la tua domanda a ChatGPT: " domanda
# === Richiesta all'API di OpenAI ===
curl -s https://api.openai.com/v1/chat/completions   -H "Content-Type: application/json"   -H "Authorization: Bearer $API_KEY"   -d "{
    \"model\": \"gpt-3.5-turbo\",
    \"messages\": [
      {\"role\": \"user\", \"content\": \"$domanda\"}
    ]
  }" | jq -r '.choices[0].message.content'
# === Inserisci qui la tua API Key personale ===
API_KEY="INSERISCI_LA_TUA_API_KEY"
# === Inserimento domanda ===
read -p "Fai la tua domanda a ChatGPT: " domanda
#!/bin/bash
# === Inserisci qui la tua API Key personale ===
API_KEY="INSERISCI_LA_TUA_API_KEY"
# === Inserimento domanda ===
read -p "Fai la tua domanda a ChatGPT: " domanda
# === Richiesta all'API di OpenAI ===
risposta=$(curl -s https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY" \
  -d "{
    \"model\": \"gpt-3.5-turbo\",
    \"messages\": [{\"role\": \"user\", \"content\": \"$domanda\"}]
  }" | jq -r '.choices[0].message.content')
# === Output a terminale ===
echo -e "\n🧠 ChatGPT risponde:\n$risposta"
# === Legge la risposta (richiede espeak) ===
echo "$risposta" | espeak -v it
# === Salva la conversazione ===
echo -e "🟣 DOMANDA:\n$domanda\n\n🟢 RISPOSTA:\n$risposta\n\n---\n" >> ~/Scrivania/chatgpt_log.txt
ciao
nano ~/Scrivania/chatgpt.desktop
chmod +x ~/Scrivania/chatgpt.desktop
# Crea lo script principale
cat << 'EOF' > ~/Scrivania/chatgpt_terminal.sh
#!/bin/bash

# === Inserisci la tua API Key personale ===
API_KEY="INSERISCI_LA_TUA_API_KEY"

# === Inserimento domanda ===
read -p "Fai la tua domanda a ChatGPT: " domanda

# === Richiesta all'API di OpenAI ===
risposta=$(curl -s https://api.openai.com/v1/chat/completions \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $API_KEY" \
-d "{
\"model\": \"gpt-3.5-turbo\",
\"messages\": [{\"role\": \"user\", \"content\": \"$domanda\"}]
}" | jq -r '.choices[0].message.content')

# === Output a terminale ===
echo -e "\n🤖 ChatGPT risponde:\n$risposta"

# === Legge la risposta (richiede espeak) ===
echo "$risposta" | espeak -v it

# === Salva la conversazione ===
echo -e "DOMANDA:\n$domanda\n\nRISPOSTA:\n$risposta\n\n---\n" >> ~/Scrivania/chatgpt_log.txt
EOF

# Rendi eseguibile lo script
chmod +x ~/Scrivania/chatgpt_terminal.sh
# Crea il collegamento sulla scrivania
cat << EOF > ~/Scrivania/chatgpt.desktop
[Desktop Entry]
Name=ChatGPT Terminale
Comment=Fai domande a ChatGPT dal terminale
Exec=/home/emanuele/Scrivania/chatgpt_terminal.sh
Icon=utilities-terminal
Terminal=true
Type=Application
Categories=Utility;
EOF

# Rendi eseguibile anche il file .desktop
chmod +x ~/Scrivania/chatgpt.desktop
# Crea lo script principale
cat << 'EOF' > ~/Scrivania/chatgpt_terminal.sh
#!/bin/bash

# === Inserisci la tua API Key personale ===
API_KEY="INSERISCI_LA_TUA_API_KEY"

# === Inserimento domanda ===
read -p "Fai la tua domanda a ChatGPT: " domanda

# === Richiesta all'API di OpenAI ===
risposta=$(curl -s https://api.openai.com/v1/chat/completions \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $API_KEY" \
-d "{
\"model\": \"gpt-3.5-turbo\",
\"messages\": [{\"role\": \"user\", \"content\": \"$domanda\"}]
}" | jq -r '.choices[0].message.content')

# === Output a terminale ===
echo -e "\n🤖 ChatGPT risponde:\n$risposta"

# === Legge la risposta (richiede espeak) ===
echo "$risposta" | espeak -v it

# === Salva la conversazione ===
echo -e "DOMANDA:\n$domanda\n\nRISPOSTA:\n$risposta\n\n---\n" >> ~/Scrivania/chatgpt_log.txt
EOF

# Rendi eseguibile lo script
chmod +x ~/Scrivania/chatgpt_terminal.sh
# Crea il collegamento sulla scrivania
cat << EOF > ~/Scrivania/chatgpt.desktop
[Desktop Entry]
Name=ChatGPT Terminale
Comment=Fai domande a ChatGPT dal terminale
Exec=/home/emanuele/Scrivania/chatgpt_terminal.sh
Icon=utilities-terminal
Terminal=true
Type=Application
Categories=Utility;
EOF

# Rendi eseguibile anche il file .desktop
chmod +x ~/Scrivania/chatgpt.desktop
cat << 'EOF' > ~/Scrivania/chatgpt_terminal.sh
#!/bin/bash

# === Inserisci la tua API Key personale ===
API_KEY="INSERISCI_LA_TUA_API_KEY"

# === Inserimento domanda ===
read -p "Fai la tua domanda a ChatGPT: " domanda

# === Richiesta all'API di OpenAI ===
risposta=$(curl -s https://api.openai.com/v1/chat/completions \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $API_KEY" \
-d '{
  "model": "gpt-3.5-turbo",
  "messages": [{"role": "user", "content": "'"$domanda"'"}]
}' | jq -r '.choices[0].message.content')

# === Output a terminale ===
echo -e "\n🤖 ChatGPT risponde:\n$risposta"

# === Legge la risposta (richiede espeak) ===
echo "$risposta" | espeak -v it

# === Salva la conversazione ===
echo -e "DOMANDA:\n$domanda\n\nRISPOSTA:\n$risposta\n\n---\n" >> ~/Scrivania/chatgpt_log.txt
EOF

# Rende eseguibile lo script
chmod +x ~/Scrivania/chatgpt_terminal.sh
bash ~/Scrivania/chatgpt_terminal.sh
sudo apt update && sudo apt install curl jq espeak -y
bash ~/Scrivania/chatgpt_terminal.sh
come stai
# CREA SCRIPT TERMINALE
cat << 'EOF' > ~/Scrivania/chatgpt_terminal.sh
#!/bin/bash

# Inserisci la tua API key
API_KEY="INSERISCI_LA_TUA_API_KEY"

# Richiedi input
read -p "Fai la tua domanda a ChatGPT: " domanda

# Invio API
risposta=$(curl -s https://api.openai.com/v1/chat/completions \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $API_KEY" \
-d '{
  "model": "gpt-3.5-turbo",
  "messages": [{"role": "user", "content": "'"$domanda"'"}]
}' | jq -r '.choices[0].message.content')

# Output
echo -e "\n🟢 ChatGPT risponde:\n$risposta"

# Sintesi vocale (richiede espeak)
echo "$risposta" | espeak
EOF

# CREA ICONA .desktop
cat << 'EOF' > ~/Scrivania/chatgpt.desktop
[Desktop Entry]
Name=ChatGPT Terminal
Comment=Interfaccia terminale per ChatGPT
Exec=bash /home/emanuele/Scrivania/chatgpt_terminal.sh
Icon=utilities-terminal
Terminal=true
Type=Application
Categories=Utility;
EOF

# RENDI TUTTO ESEGUIBILE
chmod +x ~/Scrivania/chatgpt_terminal.sh
chmod +x ~/Scrivania/chatgpt.desktop
# NOTIFICA FINALE
echo -e "\n✅ Installazione completata! Trovi l’icona sulla Scrivania.\nSe non si apre, clicca con il tasto destro > Proprietà > Permessi > 'Esegui come programma'"
1389
gedit ~/Scrivania/chatgpt.desktop
# === CREA LO SCRIPT chatgpt_terminal.sh ===
cat << 'EOF' > ~/Scrivania/chatgpt_terminal.sh
#!/bin/bash

# === INSERISCI QUI LA TUA API KEY ===
API_KEY="INSERISCI_LA_TUA_API_KEY"

# === INPUT DOMANDA ===
read -p "Fai la tua domanda a ChatGPT: " domanda

# === CHIAMATA API ===
risposta=$(curl -s https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY" \
  -d '{
    "model": "gpt-3.5-turbo",
    "messages": [{"role": "user", "content": "'"$domanda"'"}]
  }' | jq -r '.choices[0].message.content')

# === STAMPA RISPOSTA ===
echo -e "\n🟢 ChatGPT risponde:\n$risposta"

# === VOCE (richiede espeak) ===
echo "$risposta" | espeak
EOF

# === CREA ICONA SULLA SCRIVANIA ===
cat << 'EOF' > ~/Scrivania/chatgpt.desktop
[Desktop Entry]
Name=ChatGPT Terminale
Comment=Interfaccia per ChatGPT
Exec=bash /home/emanuele/Scrivania/chatgpt_terminal.sh
Icon=utilities-terminal
Terminal=true
Type=Application
Categories=Utility;
EOF

# === RENDI TUTTO ESEGUIBILE ===
chmod +x ~/Scrivania/chatgpt_terminal.sh
chmod +x ~/Scrivania/chatgpt.desktop
echo -e "\n✅ Script e icona creati nella Scrivania. Se non funziona subito, clicca col tasto destro sull’icona > Proprietà > attiva 'Esegui come programma'."
sudo apt install espeak
cd ~/Scrivania
chmod +x chatgpt_terminal.sh
chmod +x chatgpt.desktop
gedit ~/Scrivania/chatgpt.desktop
nano chatgpt.desktop
chmod +x ~/Scrivania/chatgpt.desktop
find ~ -name "chatgpt_terminal.sh" -delete
find ~ -name "chatgpt.desktop" -delete
find ~ -name "chatgpt_log.txt" -delete
nano ~/Scrivania/chatgpt_terminal.sh
chmod +x ~/Scrivania/chatgpt.desktop
# Vai alla tua Scrivania
cd ~/Scrivania
# Elimina file vecchi che potrebbero creare problemi
rm -f chatgpt.desktop
rm -f chatgpt_terminal.sh
rm -f chatgpt_log.txt
sudo apt update && sudo apt install python3 python3-pip -y && pip3 install openai tkinter pyttsx3
sudo apt update
sudo apt install python3-pip python3-tk espeak -y
pip3 install openai pyttsx3
python3 -m venv venv
source venv/bin/activate
pip install nome_pacchetto
sudo apt install python3.12-venv python3-full -y
echo 'alias attiva_neura="source ~/neura_env/bin/activate"' >> ~/.bashrc
source ~/.bashrc
python3
nano setup_neura.sh
chmod +x setup_neura.sh
./setup_neura.sh
attiva_neura
import pyttsx3
engine = pyttsx3.init()
engine.say("Ciao, sono Neura. Sono pronto.")
engine.runAndWait() python3
nano ~/neura_env/bin/activate
sudo apt update && sudo apt upgrade -y && sudo apt install -y build-essential git curl wget unzip python3 python3-pip && sudo snap install code --classic
git config --global user.name "Il Tuo Nome"
git config --global user.email "tua@email.com"
git config --global user.name "Marco Rossi"
git config --global user.email "marco.rossi@email.com"
git config --global user.name "Emanuele Calamia"
git config --global user.email "emanuelecalamia137gmail.com"
git config --global --list
