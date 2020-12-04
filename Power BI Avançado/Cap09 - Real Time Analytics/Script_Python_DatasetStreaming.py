import requests
import random
import datetime
import time

print("Hello Power BI")

URL = "INSIRA_SUA_URL_AQUI"

data = []

for i in range(150):
	data = []
	datahora = datetime.datetime.now()
	datahoraformatada = datahora.strftime("%Y-%m-%d %H:%M:%S")
	temp = random.randint(20,40)
	umidade = random.randint(10,70)
	registro = { "Data": datahoraformatada, "Temperatura": temp, "UmidadeRelativa": umidade}
	data.append(registro)
	requests.post(url = URL, json = data)
	time.sleep(0.2)

print(data)