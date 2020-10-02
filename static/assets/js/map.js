var mbAttr = 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
        '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
        'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    mbUrl = 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw';

    var grayscale   = L.tileLayer(mbUrl, {id: 'mapbox/light-v9', tileSize: 512, zoomOffset: -1, attribution: mbAttr}),
    streets  = L.tileLayer(mbUrl, {id: 'mapbox/streets-v11', tileSize: 512, zoomOffset: -1, attribution: mbAttr});

    var googleSat = L.tileLayer('http://{s}.google.com/vt/lyrs=s,h&x={x}&y={y}&z={z}',{
        maxZoom: 20,
        subdomains:['mt0','mt1','mt2','mt3']
    });

    var map = L.map('mapid', {
    center: [-7.49592,111.568909],
    zoom: 9,
    layers: [streets]
    });

    var tanggul_icon = L.icon({
        iconUrl: '/static/assets/image/tanggul.png',
        iconSize: [20, 20],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    var embung_icon = L.icon({
        iconUrl: '/static/assets/image/embung.png',
        iconSize: [20, 20],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    var ch_icon = L.icon({
        iconUrl: '/static/assets/image/ch.png',
        iconSize: [20, 20],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    var ch_icon_rain = L.icon({
        iconUrl: '/static/assets/image/thunder.svg',
        iconSize: [40, 40],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    var tma_icon = L.icon({
        iconUrl: '/static/assets/image/tma.png',
        iconSize: [20, 20],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    var ka_icon_blue = L.icon({
        iconUrl: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
        iconSize: [20, 20],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    var ka_icon_green = L.icon({
        iconUrl: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
        iconSize: [20, 20],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    var ka_icon_yellow = L.icon({
        iconUrl: 'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png',
        iconSize: [20, 20],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    var ka_icon_red = L.icon({
        iconUrl: 'http://maps.google.com/mapfiles/ms/icons/red-dot.png',
        iconSize: [20, 20],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    var ka_icon_orange = L.icon({
        iconUrl: 'http://maps.google.com/mapfiles/ms/icons/orange-dot.png',
        iconSize: [20, 20],
        iconAnchor: [16, 37],
        popupAnchor: [0, -28]
    });

    function highlightFeature(e) {
        info.update(e.target.feature.properties);
        highlightLayer = e.target;
        if (e.target.feature.geometry.type === 'LineString') {
        highlightLayer.setStyle({
            color: '#ffff00',
        });
        } else {
        highlightLayer.setStyle({
            fillColor: '#ffff00',
            fillOpacity: 0.5
        });
        }
    }

    function resetHighlight(e) {
        info.update();
        batas_das.resetStyle(e.target);
    }

    function zoomToFeature(e) {
        map.fitBounds(e.target.getBounds());
    }

    var batas_das = L.geoJSON(batas_das, {
    filter: function (feature, layer) {
        if (feature.properties) {
        // If the property "underConstruction" exists and is true, return false (don't render features under construction)
        return feature.properties.underConstruction !== undefined ? !feature.properties.underConstruction : true;
        }
        return false;
    },
    onEachFeature: function(feature,layer){
        layer.on({
            mouseover: highlightFeature,
            mouseout: resetHighlight,
            click: zoomToFeature,
        });
    },
    fillOpacity: 0.1
    }).addTo(map);

    var tanggul_bojonegoro = L.geoJSON(tanggul_bojonegoro, {
    pointToLayer: function (feature, latlng) {
        return L.marker(latlng, {icon: tanggul_icon});
    },
    filter: function (feature, layer) {
        if (feature.properties) {
        // If the property "underConstruction" exists and is true, return false (don't render features under construction)
        return feature.properties.underConstruction !== undefined ? !feature.properties.underConstruction : true;
        }
        return false;
    },
    onEachFeature: function(feature,layer){
        var popupContent = "";
        if (feature.properties) {
        popupContent += "<table border='2'>";
        popupContent += "<tbody>";
        popupContent += "<td colspan='2' class='text-center'><b>Tanggul Bojonegoro</b></td>";
        popupContent += "<tr>";
        popupContent += "<td><b>Desa</b></td>";
        popupContent += "<td>"+feature.properties.Desa+"</td>";
        popupContent += "</tr>";
        popupContent += "<td><b>Sungai</b></td>";
        popupContent += "<td>"+feature.properties.Sungai+"</td>";
        popupContent += "</tr>";
        popupContent += "<td><b>Kerusakan</b></td>";
        popupContent += "<td>"+feature.properties.Kerusakan+"</td>";
        popupContent += "</tr>";
        popupContent += "<td><b>Usulan Perbaikan</b></td>";
        popupContent += "<td>"+feature.properties.Usulan_Per+"</td>";
        popupContent += "</tr>";
        popupContent += "<td><b>Keterangan</b></td>";
        popupContent += "<td>"+feature.properties.Kerusakan1+"</td>";
        popupContent += "</tr>";
        popupContent += "</tbody>";
        popupContent += "</table>";
        }
        layer.bindPopup(popupContent);
    }
    });

    var bendungan = L.geoJSON(bendungan, {
    filter: function (feature, layer) {
        if (feature.properties) {
        // If the property "underConstruction" exists and is true, return false (don't render features under construction)
        return feature.properties.underConstruction !== undefined ? !feature.properties.underConstruction : true;
        }
        return false;
    },
    onEachFeature: function(feature,layer){
        var popupContent = "";
        if (feature.properties) {
        popupContent += "Waduk "+feature.properties.NAMA;
        }
        layer.bindPopup(popupContent);
    },
    color: '#808080'
    });

    var bendungan_on_going = L.geoJSON(bendungan_on_going, {
    filter: function (feature, layer) {
        if (feature.properties) {
        // If the property "underConstruction" exists and is true, return false (don't render features under construction)
        return feature.properties.underConstruction !== undefined ? !feature.properties.underConstruction : true;
        }
        return false;
    },
    onEachFeature: function(feature,layer){
        var popupContent = "";
        if (feature.properties) {
        popupContent += feature.properties.NAMA;
        }
        layer.bindPopup(popupContent);
    },
    color: 'black'
    });

    var embung = L.geoJSON(embung, {
    pointToLayer: function (feature, latlng) {
        return L.marker(latlng, {icon: embung_icon});
    },
    filter: function (feature, layer) {
        if (feature.properties) {
        // If the property "underConstruction" exists and is true, return false (don't render features under construction)
        return feature.properties.underConstruction !== undefined ? !feature.properties.underConstruction : true;
        }
        return false;
    },
    onEachFeature: function(feature,layer){
        var popupContent = "";
        if (feature.properties) {
        popupContent += "Embung "+feature.properties.EMBUNG;
        }
        layer.bindPopup(popupContent);
    },
    color: 'black'
    });

    var tanggul_pacitan = L.geoJSON(tanggul_pacitan, {
    pointToLayer: function (feature, latlng) {
        return L.marker(latlng, {icon: tanggul_icon});
    },
    filter: function (feature, layer) {
        if (feature.properties) {
        // If the property "underConstruction" exists and is true, return false (don't render features under construction)
        return feature.properties.underConstruction !== undefined ? !feature.properties.underConstruction : true;
        }
        return false;
    },
    onEachFeature: function(feature,layer){
        var popupContent = "";
        if (feature.properties) {
        popupContent += "<table border='2'>";
        popupContent += "<tbody>";
        popupContent += "<td colspan='2' class='text-center'><b>Tanggul Pacitan</b></td>";
        popupContent += "<tr>";
        popupContent += "<td><b>Desa</b></td>";
        popupContent += "<td>"+feature.properties.Desa+"</td>";
        popupContent += "</tr>";
        popupContent += "<td><b>Sungai</b></td>";
        popupContent += "<td>"+feature.properties.Sungai+"</td>";
        popupContent += "</tr>";
        popupContent += "<td><b>Kerusakan</b></td>";
        popupContent += "<td>"+feature.properties.Kerusakan+"</td>";
        popupContent += "</tr>";
        popupContent += "<td><b>Usulan Perbaikan</b></td>";
        popupContent += "<td>"+feature.properties.Usulan_Per+"</td>";
        popupContent += "</tr>";
        popupContent += "<td><b>Keterangan</b></td>";
        popupContent += "<td>"+feature.properties.Kerusakan1+"</td>";
        popupContent += "</tr>";
        popupContent += "</tbody>";
        popupContent += "</table>";
        }
        layer.bindPopup(popupContent);
    },
    color: 'black'
    });

    var baseLayers = {
    "Grayscale": grayscale,
    "Streets": streets,
    "Satellite" : googleSat
    };

    var overlays = {
    "Batas DAS": batas_das,
    "Tanggul Bojonegoro" : tanggul_bojonegoro,
    "Bendungan" : bendungan,
    "Bendungan on Going" : bendungan_on_going,
    "Embung" : embung,
    "Tanggul Pacitan" : tanggul_pacitan
    };

    L.control.layers(baseLayers,overlays,{collapsed: true,autoCollapse: true}).addTo(map);

    var markersLayer = new L.LayerGroup();	//layer contain searched elements
	
	map.addLayer(markersLayer);

    var controlSearch = new L.Control.Search({
		position:'topleft',		
		layer: markersLayer,
		initial: false,
		zoom: 12,
		marker: false,
        collapsed: false,
        textPlaceholder : "Cari berdasarkan nama pos atau wilayah administratif.."
	});

    controlSearch.on('search:locationfound', function(e) {
        if(e.layer._popup)
            e.layer.openPopup();
    });

	map.addControl( controlSearch );

    var info = L.control();
    info.onAdd = function (map) {
        this._div = L.DomUtil.create('div', 'info'); // create a div with a class "info"
        this.update();
        return this._div;
    };

    // method that we will use to update the control based on feature properties passed
    info.update = function (props) {
        this._div.innerHTML =  (props ?
            '<b>'+ props.NAMA_DAS + '</b><br/><b>Luas ' + props.Luas_km2 + ' KM<sup>2</sup></b>'
            : '<b>Hover over a polygon</b>');
    };

    info.addTo(map);