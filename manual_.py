
class MTinggiMukaAir:
    '''Untuk mengambil data tma yang dikirim petugas'''
    def GET(self):
        web.header('Content-Type', 'application/json')
        web.header('Access-Control-Allow-Origin', '*')
        inp = web.input()
        sampling = inp.get('sampling')
        n = datetime.datetime.now()
        waktu = n.replace(hour=0, minute=0, second=0, microsecond=0).date()
        if sampling:
            d = to_date(sampling)
            waktu = datetime.datetime(d.year, d.month, d.day).date()
        rst = [c.sqlmeta.asDict() for c in
               TinggiMukaAir.select(TinggiMukaAir.q.waktu==waktu)]
        return json.dumps(rst, default=json_serialize)



class MCurahHujan:
    '''Untuk mengambil data curahhujan yang dikirim petugas'''
    def GET(self):
        web.header('Content-Type', 'application/json')
        web.header('Access-Control-Allow-Origin', '*')
        inp = web.input()
        sampling = inp.get('sampling')
        n = datetime.datetime.now()
        waktu = n.replace(hour=0, minute=0, second=0, microsecond=0).date()
        if sampling:
            d = to_date(sampling)
            waktu = datetime.datetime(d.year, d.month, d.day).date()
        rst = [c.sqlmeta.asDict() for c in
               CurahHujan.select(CurahHujan.q.waktu==waktu)]
        return json.dumps(rst, default=json_serialize)


