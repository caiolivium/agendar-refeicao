#!/bin/bash

echo "Instalando dependências do Python..."
python3 -m pip install --upgrade pip
pip install -r requirements.txt

echo "Baixando o ChromeDriver..."
if ! command -v wget &> /dev/null
then
    echo "wget não encontrado. Instalando wget..."
    sudo apt-get install wget -y
fi

wget https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
rm chromedriver_linux64.zip
mv chromedriver /usr/local/bin/

echo "Tudo pronto! Execute o programa com:"
echo "python src/main.py"
