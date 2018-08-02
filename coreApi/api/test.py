class Kalkulasi:

    def __init__(self, masukan):
        self.input = masukan
        self.output = 0

    def sum(self, add):
        self.output = self.input + add
        return self
