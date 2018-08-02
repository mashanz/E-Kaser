import requests
import json


class Api:
    def __init__(self, baseurl):
        self.baseurl = baseurl
        self.status = ""
        self.body = ""
        self.cookies = ""
        self.headers = ""

    def get(self, path, param):
        response = requests.request("GET", self.baseurl + path, params=param)
        self.status = response.status_code
        self.body = response.text
        self.cookies = response.cookies
        self.headers = response.headers

    def post(self, path, param):
        payload = json.dumps(param)
        payload = payload.replace(", ", ",")
        payload = payload.replace("{", "{\n\t")
        payload = payload.replace("\",", "\",\n\t")
        payload = payload.replace("}", "\n}")
        response = requests.request("POST", self.baseurl + path, data=payload)
        self.status = response.status_code
        self.body = response.text
        self.cookies = response.cookies
        self.headers = response.headers

    def postget(self, path, data, param):
        payload = json.dumps(data)
        payload = payload.replace(", ", ",")
        payload = payload.replace("{", "{\n\t")
        payload = payload.replace("\",", "\",\n\t")
        payload = payload.replace("}", "\n}")
        response = requests.request("POST", self.baseurl + path, data=payload, params=param)
        self.status = response.status_code
        self.body = response.text
        self.cookies = response.cookies
        self.headers = response.headers
