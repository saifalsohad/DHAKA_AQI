from sqlite3 import Date
import requests
import json
import  psycopg2
from datetime import datetime


#Dhaka AQI 
response = requests.get("https://api.waqi.info/feed/dhaka/?token=bed1bf9d708319681c6398518276360d134f0071")
#print(response.text)
#print(dir(response))
x=response.json()
#print(x)
e=json.dumps(x)
e1 = json.loads(e)
dhaka_aqi=e1['data']['aqi']
date_dhaka=e1['data']['time']['s']
print(dhaka_aqi)
print(date_dhaka)

#print(e)
# connecting to database 
conn = None
conn = psycopg2.connect(
    host="localhost",
    database="dhaka_aqi",
    user="postgres",
    password="420420")

cur = conn.cursor()

command = (
        """
        CREATE TABLE vendors21 (
            vendor_id SERIAL PRIMARY KEY,
            vendor_name VARCHAR(255) NOT NULL
        )
        """)
#cur.execute(command)
#cur.close()
conn.commit()


#type casting
print(type(date_dhaka))
date = datetime.fromisoformat(date_dhaka)
print(type(date))
print(type(dhaka_aqi))

#inserting values
cur.execute("""INSERT INTO aqi_tab1 (date,aqi) VALUES(%s,%s)""",[date,dhaka_aqi])
#q=(dhaka_aqi)
#cur.execute(sql,q)
cur.close()
conn.commit()

print("done")



