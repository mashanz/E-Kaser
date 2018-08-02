import core.api.restapi
import core.api.path
import core.objects.denom
data = core.api.restapi.Api(core.api.path.Path().baseUrl)
data2 = core.api.restapi.Api(core.api.path.Path().baseUrl2)


def getExample():
    params = dict(
        prodCode='777080',
        pin='e10adc3949ba59abbe56e057f20f883e',
        latitude='-6.8725783',
        phNumber='6281220564514',
        billNumber='6281220564514',
        longitude='107.6179708'
    )
    data.get(core.api.path.Path().denom, params)
    print(data.body)
    denom = core.objects.denom.Denom(data.body)
    print(denom.rc)
    print(denom.data)

    # dataz = denom.Data(denom.data[0])
    # print(dataz.denom)
    # print(dataz.feeAgen)
    # print(dataz.subtotal)
    # print(dataz.billercode)
    # print(dataz.hargaDasar)
    # print(dataz.feeleader)

def postExample():
    payloads = dict(
        procCode='38',
        prodCode='070002',
        phNumber='6281324195469',
        billNumber='14022394192',
        pin='1',
        latitude='-6.8725042',
        longitude='107.6180189',
        amount='50000',
        jml_bulan='0',
        bit61='0'
    )
    data.post(core.api.path.Path().pln, payloads)
    print(data.body)


def postgetExample():
    params = dict(
        key='14344519e2a2ecada9f8aef57cd845c4fb7aaca9'
    )
    datas = dict(
        owner_id='n1068'
    )
    data2.postget(core.api.path.Path().marketplacecheck, datas, params)
    print(data2.body)


if __name__ == "__main__":
    getExample()
    # postExample()
    # postgetExample()

