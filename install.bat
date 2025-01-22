@echo off
echo Instalando dependências do Python...
python -m pip install --upgrade pip
pip install -r requirements.txt

echo Baixando o ChromeDriver...
curl -O https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_win32.zip
tar -xf chromedriver_win32.zip
del chromedriver_win32.zip

echo Tudo pronto! Execute o programa com:
echo python src\main.py
pause
