"""
    map.py
    Aplikasi menampilkan Peta

    @author: Widoyo
    @date: 28 Nop 2017
"""
import datetime, time, json
import web
from sqlobject import AND, OR
from models import Agent, KLIMATOLOGI, WILAYAH, conn
from models import HIDROLOGI
from helper import to_date

urls = (
    '/curahhujan', 'MapCurahhujan',
    '/tma', 'MapTma',
    '/bendungan', 'MapBendungan',
    '/kualitasair','MapKa'
)

app_map = web.application(urls, locals())
session = web.session.Session(app_map, web.session.DiskStore('sessions'),
                              initializer={'username': None, 'role': None,
                                           'flash': None})
globals = {'session': session}
rendermap = web.template.render('templates/', base='basemap', globals=globals)


class MapCurahhujan:
    def GET(self):
        HIDE_THIS = [a.strip() for a in open('HIDE_ARR.txt').read().split(',')]
        agents = Agent.select(AND(OR(Agent.q.AgentType == KLIMATOLOGI, Agent.q.AgentType == 0.0),
                                  Agent.q.expose == True))
        agents = [a for a in agents if a.table_name not in HIDE_THIS]
        sql = "SELECT prima_id, AgentName FROM agent WHERE AgentType IN (0, 1) AND LENGTH(prima_id)>4"
        try:
            rst = Agent._connection.queryAll(sql)
            all_prima = dict([(a[1].lower().replace('.', '_').replace(' ', '_'), a[0]) for a in rst])
        except:
            all_prima = {}
        #all_prima = dict(map(lambda x: (x[1], x[0]), [p.strip().split('\t') for p in open('PRIMA_ID.txt').readlines()]))
        all_pos = []
        for a in agents:
            sql = "SELECT Rain, CONCAT(SamplingDate, ' ', SamplingTime) AS sampling FROM %s ORDER BY SamplingDate DESC, SamplingTime DESC LIMIT 0, 1" % (a.table_name,)
            try:
                rst = Agent._connection.queryAll(sql)
            except:
                rst = None
            if rst:
                rain, sampling = rst[0]
                # print(rst[0])
                sampling = datetime.datetime.strptime(sampling, '%Y-%m-%d %H:%M:%S')
                if datetime.datetime.now() - sampling > datetime.timedelta(minutes=10):
                    rain = 0
                else:
                    rain = float(rain or 0)
            else:
                rain = 0

            if a.kab == None:
                kab = "-"
            else:
                kab = a.kab

            ch = a.get_segmented_rain(datetime.date.today())

            p_ = {'id': a.AgentId, 'lrain': rain, 'name': a.cname+' ('+kab+')', 'll': a.ll, 'tname': a.table_name,'petugas':[p.nama for p in a.petugas],'kode':[p.kode for p in a.petugas],'ch_today':float(ch.get("total"))}
            if a.table_name in all_prima.keys():
                p_.update({'device': all_prima.get(a.table_name)})
            all_pos.append(p_)
        js_foot = """
        <script>
            var allPos = """ + str(all_pos) + """;
            for (var i = 0; i < allPos.length; i++) {
                var iw = `<div class="panel panel-default">
                    <div class="panel-heading">
                    <div class="panel-title"><h6>${allPos[i].name}</h6></div></div>
                    <div class="panel-body">
                    <table class="table">
                    <tr><td><b>Curah Hujan</b></td><td><b>${allPos[i].ch_today} mm</b>&nbsp;&nbsp;<a href="/curahhujan/${allPos[i].id}">(Detail)</a></td></tr>
                    <tr><td>Prima ID</td><td>${allPos[i].device}</td></tr>
                    <tr><td>Koordinat</td><td>${allPos[i].ll}</td></tr>
                    </table>
                    </div>
                    <div class="panel-footer"><span class="icofont-user"></span>&nbsp;&nbsp;${allPos[i].petugas} <br>
                    <span class="icofont-barcode"></span>&nbsp;&nbsp;<b>${allPos[i].kode}</b></div>
                    </div>`
                var lat = parseFloat(allPos[i].ll.split(',')[0]);
                var lng = parseFloat(allPos[i].ll.split(',')[1]);

                var name = allPos[i].name,
                marker = new L.Marker(new L.latLng([lat,lng]), {title: name,icon: ch_icon} );//se property searched;
                marker.bindPopup(iw);
                markersLayer.addLayer(marker);
            }
        </script>

        <script>
        var ws = new WebSocket('ws://mqtt.bbws-bsolo.net:22286');
        ws.onmessage = function (event) {
            var data = JSON.parse(event.data);
            if (data.device === undefined) { return; }
            var device_id = data.device.split('/')[1];
            for (ap in allPos) {
                if (allPos[ap].device == device_id) {
                    //console.log(device_id+" "+allPos[ap].name);
                    var pos_hujan = 1;
                    if (pos_hujan ==1) {
                        var lat_ws = parseFloat(allPos[ap].ll.split(',')[0]);
                        var lng_ws = parseFloat(allPos[ap].ll.split(',')[1]);
                    }
                    break;
                } else {
                    var pos_hujan = 0;
                }
            }

            if (data.tick > 0) {
                if (pos_hujan == 1){
                    icon_hujan = ch_icon_rain;
                }
            } else {
                icon_hujan = ch_icon;
            }

            //marker = new L.Marker(new L.latLng([lat_ws,lng_ws]), {icon: icon_hujan} );//se property searched;
            //marker.bindPopup(iw);
            //markersLayer.addLayer(marker);


        }
        </script>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        """
        return rendermap.map.curahhujan({'js_foot': js_foot})


class MapTma:
    def GET(self):
        HIDE_THIS = [a.strip() for a in open('HIDE_AWLR.txt').read().split(',')]
        agents = Agent.select(AND(OR(Agent.q.AgentType == HIDROLOGI,
                                     Agent.q.AgentType == 0),
                                  Agent.q.expose == True)).orderBy(
                                      ["wilayah", "-DPL", "-siaga3"])
        agents = [a for a in agents if a.table_name not in HIDE_THIS]
        all_pos = []
        for a in agents:
            try:
                petugas = a.petugas[0].nama
                petugas_kode = a.petugas[0].kode
            except:
                petugas = '-'
                petugas_kode = '-'

            if a.kab == None:
                kab = "-"
            else:
                kab = a.kab
            row = {'id': a.AgentId, 'name': a.cname+' ('+kab+')', 'll': a.ll
                    ,'device':a.prima_id, 'petugas': petugas,
                   'kode': petugas_kode} 
            all_pos.append(row)
        all_pos = json.dumps(all_pos)
        js_foot = """
        <script>
            var allPos = """ + str(all_pos) + """;
            for (var i = 0; i < allPos.length; i++) {
                var iw = `<div class="panel panel-default">
                    <div class="panel-heading">
                    <div class="panel-title"><h6>${allPos[i].name}</h6></div></div>
                    <div class="panel-body">
                    <table class="table">
                    <tr><td>Prima ID</td><td>${allPos[i].device}</td></tr>
                    <tr><td>Koordinat</td><td>${allPos[i].ll}</td></tr>
                    </table>
                    </div>
                    <div class="panel-footer"><span class="icofont-user"></span>&nbsp;&nbsp;${allPos[i].petugas} <br>
                    <span class="icofont-barcode"></span>&nbsp;&nbsp;<b>${allPos[i].kode}</b></div>
                    </div>`
                var lat = parseFloat(allPos[i].ll.split(',')[0]);
                var lng = parseFloat(allPos[i].ll.split(',')[1]);

                var name = allPos[i].name,
                marker = new L.Marker(new L.latLng([lat,lng]), {title: name,icon: tma_icon} );//se property searched;
                marker.bindPopup(iw);
                markersLayer.addLayer(marker);
            }
        </script>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        """
        return rendermap.map.tma({'js_foot': js_foot})

class MapKa:
    def GET(self):
        conn = Agent._connection
        sql = "select k.waktu,k.ip,k.id_pos,a.cname,a.ll,a.show from kualitas_air k inner join (SELECT MAX(c.waktu) as max_date, c.ip, d.id,d.cname,d.ll,d.show FROM kualitas_air c, lokasi d WHERE c.id_pos=d.id GROUP BY d.id) a on a.max_date = k.waktu and a.id = k.id_pos and a.show = 1 order by k.id_pos ASC"
        rst = conn.queryAll(sql)
        all_pos=[]
        for ka in rst:
            a = ka[0].strftime("%b %Y")
            if ka[1] == None:
                ip_last_time = "Belum Tersedia"
            else:
                ip_last_time = ka[1]
            all_pos.append({'id': str(ka[2]), 'name': ka[3], 'll': ka[4],'last_time':a,'ip_last_time':ip_last_time})

        js_foot = """
        <script>
          var allPos = """ + str(all_pos) + """;
          for (var i = 0; i < allPos.length; i++) {
             var iw = `<div class="panel panel-default">
                <div class="panel-heading">
                <div class="panel-title"><h6>${allPos[i].name}</h6></div></div>
                <div class="panel-body">
                <table class="table">
                <tr><td>Koordinat</td><td>${allPos[i].ll}</td></tr>
                <tr><td>Data Terakhir</td><td>${allPos[i].last_time}</td></tr>
                <tr><td>IP Terakhir</td><td>${allPos[i].ip_last_time}</td></tr>
                </table>
                </div>`
             var lat = parseFloat(allPos[i].ll.split(',')[0]);
             var lng = parseFloat(allPos[i].ll.split(',')[1]);
             if(allPos[i].ip_last_time <= 1){
                    var iconka = ka_icon_blue;
             }
             else if(allPos[i].ip_last_time > 1 && allPos[i].ip_last_time <= 5){
                    var iconka = ka_icon_green;
             }
             else if(allPos[i].ip_last_time > 5 && allPos[i].ip_last_time <= 10){
                    var iconka = ka_icon_yellow;
             }
             else if(allPos[i].ip_last_time > 10){
                    var iconka = ka_icon_red;
             }
             else{
                var iconka = ka_icon_orange;
             }
             var name = allPos[i].name,
                marker = new L.Marker(new L.latLng([lat,lng]), {title: name,icon: iconka} );//se property searched;
                marker.bindPopup(iw);
                markersLayer.addLayer(marker);
          }
        </script>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        """
        return rendermap.map.kualitasair({'js_foot': js_foot})
