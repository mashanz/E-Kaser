import json


class Denom:
    def __init__(self, denom):
        obj = json.loads(denom)
        self.rc = obj["rc"]
        self.data = obj["data"]

    class Data:
        def __init__(self, data):
            obj = json.loads(data)
            self.feeAgen = obj["feeAgen"]
            self.denom = obj["denom"]
            self.subtotal = obj["subtotal"]
            self.billercode = obj["billercode"]
            self.hargaDasar = obj["hargaDasar"]
            self.feeleader = obj["feeleader"]
