import urllib.request
import json

data = {
        "Inputs": {
                "input1":
                [
                    {
                            'Number of times pregnant': 10,   
                            'Plasma glucose concentration a 2 hours in an oral glucose tolerance test': "148",   
                            'Diastolic blood pressure (mm Hg)': "72",   
                            'Triceps skin fold thickness (mm)': "35",   
                            '2-Hour serum insulin (mu U/ml)': "0",   
                            'Body mass index (weight in kg/(height in m)^2)': "33.6",   
                            'Diabetes pedigree function': "0.627",   
                            'Age (years)': "90",   
                            'Class variable (0 or 1)': "1",   
                    }
                ],
        },
    "GlobalParameters":  {
    }
}

body = str.encode(json.dumps(data))

url = 'COLOQUE_SUA_URL_AQUI'
api_key = 'COLOQUE_SUA_API_KEY_AQUI' 
headers = {'Content-Type':'application/json', 'Authorization':('Bearer '+ api_key)}

req = urllib.request.Request(url, body, headers)

try:
    response = urllib.request.urlopen(req)

    result = response.read()
    print(result)
except urllib.error.HTTPError as error:
    print("The request failed with status code: " + str(error.code))

    # Print the headers - they include the requert ID and the timestamp, which are useful for debugging the failure
    print(error.info())
    print(json.loads(error.read().decode("utf8", 'ignore')))