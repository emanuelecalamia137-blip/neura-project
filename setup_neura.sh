#!/bin/bash

# Crea l'ambiente virtuale
python3 -m venv ~/neura_env

# Attiva temporaneamente l'ambiente per installare i pacchetti
source ~/neura_env/bin/activate

# Installa i pacchetti richiesti
pip install --upgrade pip
pip install openai pyttsx3

# Disattiva l'ambiente
deactivate

# Aggiunge alias a ~/.bashrc (solo se non è già presente)
if ! grep -q "attiva_neura" ~/.bashrc; then
  echo 'alias attiva_neura="source ~/neura_env/bin/activate"' >> ~/.bashrc
fi

# Ricarica .bashrc
source ~/.bashrc

echo "✅ Ambiente Neura creato e configurato. Usa 'attiva_neura' per attivarlo."
