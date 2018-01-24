import requests
import json

import time

for i in range(16,1000):
    data = {
        "id": i,
        "title": "article%s"%i,
        "content": "content%s"%i,
        "author": 1
    }
    res = requests.post('http://127.0.0.1:8000/api/article/', data)
    print(res.text)