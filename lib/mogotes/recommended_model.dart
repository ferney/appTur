class RecommendedModel {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;
  int price;

  RecommendedModel(this.name, this.tagLine, this.image, this.images,
      this.description, this.price);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'], item['tagLine'],
        item['image'], item['images'], item['description'], item['price']))
    .toList();

var recommendationsData = [
  {
    "name": "Cascada Del Diablo",
    "tagLine": "Cascada Del Diablo",
    "image": "https://i.postimg.cc/wjZZvVqb/Diablo-1.gif",
    "images": [
      "https://i.postimg.cc/CKrZsTp9/guf6.gif",
      "https://i.postimg.cc/G90PLhVS/ap105.png",
      "https://i.postimg.cc/9QYknvqj/app101.png",
      "https://i.postimg.cc/t4jfDXJ5/app12.png",
      "https://i.postimg.cc/MGsFWVDP/app60.png",
      "https://i.postimg.cc/tR88ZdH8/app62.png",
      "https://i.postimg.cc/7hzsMcyd/app66.png",
      "https://i.postimg.cc/1562pgmX/app68.png",
      "https://i.postimg.cc/25jtR24L/app73.png",
      "https://i.postimg.cc/vHW24ph6/Sin-t-tulo15.png"
    ],
    "description":
        "Una maravilla de aguas cristalinas en medio de un tranquilo bosque de plantas y animales que se encargan de darle vida a este maravilloso lugar.",
    "price": 12
  },
  {
    "name": "Cascada La Virgen",
    "tagLine": "Cascada La Virgen",
    "image": "https://i.postimg.cc/bJWhjhGd/Sin-Audio-1-1-1.gif",
    "images": [
      "https://i.postimg.cc/CxqfYMX7/gif1.gif",
      "https://i.postimg.cc/L84CLddn/21-01-2021-19-58-33-4830000.gif",
      "https://i.postimg.cc/NFVtLZkn/app115.png",
      "https://i.postimg.cc/bYFp62fR/app116.png",
      "https://i.postimg.cc/fL8DQVtD/app17.png",
      "https://i.postimg.cc/6qTwWBnR/app61.png",
      "https://i.postimg.cc/PrPrhQQc/app63.png",
      "https://i.postimg.cc/x1mfNj73/cascada-31.jpg"
    ],
    "description":
        "Es una hermosa caída de agua cristalinas, la cual es reconocida por su espectacular paisaje, siendo un lugar muy frecuentado tanto por turistas como locales.",
    "price": 12
  },
  {
    "name": "Pozo Del Pino",
    "tagLine": "Pozo Pel Pino",
    "image": "https://i.postimg.cc/Gtr38RQt/Pino-1.gif",
    "images": [
      "https://i.postimg.cc/2yKsCzgh/pozo-del-pino.gif",
      "https://i.postimg.cc/Pq4BSCcG/pino.jpg",
      "https://i.postimg.cc/4yrMYVKc/pino2.jpg",
      "https://i.postimg.cc/gJt1PfmN/pino3.jpg",
      "https://i.postimg.cc/Rh3yCX09/pino4.jpg",
      "https://i.postimg.cc/QtdvwXGF/pino5.jpg"
    ],
    "description":
        "Un hermoso pozo con una cascada de agua limpia y pura, rodeada de una exótica vegetación y de facil acceso.",
    "price": 12
  },
  {
    "name": "Pozo Negro",
    "tagLine": "Pozo Negro",
    "image": "https://i.postimg.cc/jS6WZ8DG/Negro-1-1.gif",
    "images": [
      "https://i.postimg.cc/xd11w1wn/Creado-con-Motionleap-22.gif",
      "https://i.postimg.cc/D0VZMWt0/app.png",
      "https://i.postimg.cc/q7SMNhBw/app2.png",
      "https://i.postimg.cc/QNpxMd2g/app3.png",
      "https://i.postimg.cc/fLdWmzJN/app4.png",
      "https://i.postimg.cc/7ZBLytpp/app5.png",
      "https://i.postimg.cc/QCr8q2TW/app53.png",
      "https://i.postimg.cc/TPp32qxh/app6.png",
      "https://i.postimg.cc/Gm3pVnSF/app67.png"
    ],
    "description":
        "Una caída de agua pura, limpia y clara, su nombre se deriba de su ambiente oscuro que da misterio y permite apreciar los bellos paisajes.",
    "price": 6
  },
  {
    "name": "Hoyo De Los Pajaros",
    "tagLine": "Hoyo de Los Pajaros",
    "image": "https://i.postimg.cc/CMmdBZ3V/Hoyo-1.gif",
    "images": [
      "https://i.postimg.cc/0QLdDsv6/hoyo5.jpg"
          "https://i.postimg.cc/0QLdDsv6/hoyo5.jpg",
      "https://i.postimg.cc/yYFGC9Cj/cascada.jpg",
      "https://i.postimg.cc/5tGgCNMj/cascada.jpg",
      "https://i.postimg.cc/tgvzR6mN/hoyo4.jpg",
      "https://i.postimg.cc/Y94zvS5K/hoyo3.jpg",
      "https://i.postimg.cc/GpmQ1Kzp/hoyo2.jpg",
      "https://i.postimg.cc/GmQQNVFN/hoyo.jpg"
    ],
    "description":
        "Este sitio enigmático habitan los pájaros guácharos, un tipo de aves que aparecen, generalmente, en espacios oscuros.",
    "price": 11
  },
  /* {
    "name": "Las Aguilas",
    "tagLine": "Las Aguilas",
    "image":
        "https://i.postimg.cc/bNJGsK1y/ee0aa4-46b92d1430c4011ae01d5708b0e79275.png",
    "images": [
      "https://i.postimg.cc/KjMfZXKw/cascada.jpg",
      "https://i.postimg.cc/g2LnK8M1/ee0aa4-510fdcdc25fce639925c05c267580834.png",
      "https://i.postimg.cc/1RMnR9n7/ee0aa4-8c6f37b63211fb9db5083ea0f672c09b.png",
      "https://i.postimg.cc/zfm32v6v/ee0aa4-f9ca6251261f0fd878816d0ff11a08f5.png",
      "https://i.postimg.cc/28K1v2x4/ee0aa4-57bb43b2eed3d5aee86d07818f34077b.png",
      "https://i.postimg.cc/7ZWyGwCW/cascada.jpg"
    ],
    "description":
        "Quebrada que corre formando distintos pozos, esta cascada es ideal para rappel y se acompaña de una hermosa panorámica del cañon.",
    "price": 14
  },*/
  {
    "name": "Cascada El Resumidero",
    "tagLine": "Cascada El Resumidero",
    "image": "https://i.postimg.cc/qR9tRWtZ/Resumen-1.gif",
    "images": [
      "https://i.postimg.cc/Xvds0nd1/Creado-con-Motionleap-25.gif",
      "https://i.postimg.cc/0QtGxWXD/cascada.jpg",
      "https://i.postimg.cc/YSsh85v4/cascada.jpg",
      "https://i.postimg.cc/RZx7cJNX/122833541-1558311811020052-8840691333789601003-n.jpg",
      "https://i.postimg.cc/65vV2f58/21314349-737677859750122-5001871935429411334-n.png",
      "https://i.postimg.cc/6pVdz6Zw/21314754-737679229749985-3595974116371937188-n.png",
      "https://i.postimg.cc/wjKX6s2f/cascada.jpg"
    ],
    "description":
        "Sitio natural donde se puede apreciar una gran caida de agua, rodeada de una espesa vegetación.",
    "price": 12
  },
  {
    "name": "Cascada Puente De Arco",
    "tagLine": "Cascada Puente De Arco",
    "image":
        "https://i.postimg.cc/fRtbPD8t/vlc-record-2021-01-31-21h18m27s-Arco-1-m4v.gif",
    "images": [
      "https://i.postimg.cc/Vvr4sthw/Creado-con-Motionleap-34.gif",
      "https://i.postimg.cc/j2KGg7jY/131887700-153889986107129-3212487985196378556-n.jpg",
      "https://i.postimg.cc/YCfLTc8c/n.jpg",
      "https://i.postimg.cc/sxcMGjN2/app52.png"
    ],
    "description":
        "Ubicado en la vereda de San Roque, estas cascadas son formadas por la Quebrada los Pepes, apto para realizar paseos, senderismo, cañonismo y baño en sus aguas cristalinas. ",
    "price": 16
  },
  {
    "name": "Represa o Minero",
    "tagLine": "Represa o Minero",
    "image": "https://i.postimg.cc/sxMXRz3N/minero.gif",
    "images": [
      "https://i.postimg.cc/KvmrsdGF/Creado-con-Motionleap-31.gif",
      "https://i.postimg.cc/hvYLcRy4/cascada4.jpg",
      "https://i.postimg.cc/NGC71Rsh/cascada3.jpg",
      "https://i.postimg.cc/hvvLkt03/jumm.jpg",
      "https://i.postimg.cc/yYVd22Lh/IMG-20201213-090416.jpg",
      "https://i.postimg.cc/j2GLVj2M/120200514-3638913912808440-4666533417759058064-n.jpg"
    ],
    "description":
        "En medio de las montañas y con una buena vista panorámica del valle de Mogotes, se respira aire puro en un sitio de agua muy fria que invita al disfrute¡¡",
    "price": 9
  },
  {
    "name": "Cueva El Resumidero",
    "tagLine": "Cueva El Resumidero",
    "image":
        "https://i.postimg.cc/bYxTSYwx/ee0aa4-78c2e22cfa0d76b3c6aa17cb2e829014.png",
    "images": [
      "https://i.postimg.cc/bYxTSYwx/ee0aa4-78c2e22cfa0d76b3c6aa17cb2e829014.png",
      "https://i.postimg.cc/MKzY7knh/ee0aa4-a2e95ba4ee0eb8b45d90f7a5de71a578.png",
      "https://i.postimg.cc/NfbkbNTL/ee0aa4-a68c8948c013202bb079e00534947fb8-1.pngp",
      "https://i.postimg.cc/cLHMzQMh/ee0aa4-f4eed25d8f4128df73cec7c3cc3527c7.png"
    ],
    "description":
        "Formación geológica con recorrido de una hora, se cree que allí vivieron algunos indígenas en incluso sirvió de trinchera.",
    "price": 12
  },
  {
    "name": "Cueva Rica",
    "tagLine": "Cueva Rica",
    "image": "https://i.postimg.cc/NFRkNNQn/Rica-1.gif",
    "images": [
      "https://i.postimg.cc/fLFsGZsd/cascada.jpg",
      "https://i.postimg.cc/CxkLS2Nx/72.jpg",
      "https://i.postimg.cc/yYJ8rx39/ee0aa4-5826aae822dc65beea35a9d98cca5c23.png",
      "https://i.postimg.cc/X7TYMW9P/ee0aa4-e9ad216eb019fbefe50eab9a21570166.png",
      "https://i.postimg.cc/KY5GggCX/IMGP1273-0.jpg",
      "https://i.postimg.cc/GpR32j7J/120819528.jpg",
      "https://i.postimg.cc/tJhcBH4p/cascada.jpg",
      "https://i.postimg.cc/yxQR4DdP/cascada.jpg",
      "https://i.postimg.cc/q7WCpN8B/cascada.jpg",
      "https://i.postimg.cc/HsT8WD7M/cascada.jpg",
    ],
    "description":
        "Cavidad rocosa natural ubicada donde se puede apreciar el cañon del rio mogoticos, la cueva se encuentra decorada por pictogramas hechos por los guanes, antigua población indígena de la región.",
    "price": 13
  },
  {
    "name": "El Templo",
    "tagLine": "El Templo",
    "image": "https://i.postimg.cc/R0b4j55Y/Creado-con-Motionleap-52.gif",
    "images": [
      "https://i.postimg.cc/R0b4j55Y/Creado-con-Motionleap-52.gif",
      "https://i.postimg.cc/c4YrL61W/panoramio-132891350.jpg",
      "https://i.postimg.cc/FFwYv04G/ee0aa4-8d1ab3bdaf288e0fd97d8b702cdf9304.png",
      "https://i.postimg.cc/FFYYwD27/ee0aa4-5b11d27fb1627fa6992cf1fef167f94a.png",
      "https://i.postimg.cc/V5yQhY2B/ee0aa4-0c010faf8dbb2709f9116c06efe35ed6.png",
      "https://i.postimg.cc/1RcM7BKm/cascada.jpg",
      "https://i.postimg.cc/MHFn3gP3/cascada.jpg",
      "https://i.postimg.cc/L4Lj63Cc/cascada.jpg"
    ],
    "description":
        "Es una enorme roca la cual es atravezada por una quebrada donde el sonido de la naturaleza domina el lugar.",
    "price": 8
  },
  {
    "name": "Parque Los Arrayanales",
    "tagLine": "Parque Los Arrayanales",
    "image": "https://i.postimg.cc/RF5PYVpy/2020-12-15.jpg",
    "images": [
      "https://i.postimg.cc/Hk8VLp36/cascada.jpg",
      "https://i.postimg.cc/bYFyS7ZW/cascada.jpg",
      "https://i.postimg.cc/yd8Kkjs7/cascada.jpg",
      "https://i.postimg.cc/BvM99FDk/cascada.jpg",
      "https://i.postimg.cc/W1STjxc5/cascada.jpg",
      "https://i.postimg.cc/NfcyY6Q2/arrayan5.png"
    ],
    "description":
        "Un lugar poblado de arrayanes y cruzado por un arroyo, ideal para encuentros familiares para para descansar y apreciar lo natural.",
    "price": 4
  },
  {
    "name": "Alto De Los Cacaos",
    "tagLine": "Alto De Los Cacaos",
    "image": "https://i.postimg.cc/YqbPkxQd/cacaos3.png",
    "images": [
      "https://i.postimg.cc/YqbPkxQd/cacaos3.png",
      "https://i.postimg.cc/4yQbFJKr/6075386-Master.jpg",
      "https://i.postimg.cc/8kRHCbyt/18421859-Master.jpg",
      "https://i.postimg.cc/ncHW6W9s/cacaos2.png",
      "https://i.postimg.cc/zDwM2NvZ/cacaos.png"
    ],
    "description":
        "Está ubicado en la Vereda Cabecera, entre los límites de Mogotes y el Municipio de San Joaquín, se puede observar la inmensidad del valle de Santa Bárbara de los Mogotes.",
    "price": 5
  },
  {
    "name": "Quebrada Lajas",
    "tagLine": "Quebrada Lajas",
    "image": "https://i.postimg.cc/5t8KnQvP/lajas.gif",
    "images": [
      "https://i.postimg.cc/T3dyx6F2/Creado-con-Motionleap-4.gif",
      "https://i.postimg.cc/R0MbwXhV/sandra3.png",
      "https://i.postimg.cc/t7QBJz8b/sandra4.png",
      "https://i.postimg.cc/1tdChSHf/sandra5.png",
      "https://i.postimg.cc/90qxck81/sandra6.png",
      "https://i.postimg.cc/9f7tR9tF/Sin-t-tulo11.png",
      "https://i.postimg.cc/MTJ0yGd0/Sin-t-tulo4.png"
    ],
    "description":
        "Es una quebrada que termina en pozo, con una corriente de agua fria, se suma a un agradable paisaje que la convierte en ruta obligada para caminatas ecológicas y camping.",
    "price": 4
  },
  {
    "name": "Pozo Del Oso",
    "tagLine": "Pozo Del Oso",
    "image": "https://i.postimg.cc/SR9GNwrg/oso.gif",
    "images": [
      "https://i.postimg.cc/L8y6tZXL/Creado-con-Motionleap-58.gif",
      "https://i.postimg.cc/SR3QBBBd/sandra7.png",
      "https://i.postimg.cc/fRHgjY9c/app120.png",
      "https://i.postimg.cc/prD6D7fr/app122.png",
      "https://i.postimg.cc/1z2CbPM4/app123.png",
      "https://i.postimg.cc/CKzrvdGW/app124.png",
      "https://i.postimg.cc/SxQvMgJQ/sandra8.png",
      "https://i.postimg.cc/NFHwZp1v/app13.png",
      "https://i.postimg.cc/6QpqFxTs/Sin-t-tulo3.png"
    ],
    "description":
        "Es un lugar apto para baño en aguas frescas, cristalinas y frías sumado a un exuberante paisaje natural ideal para caminatas.",
    "price": 4
  },
  {
    "name": "Mirador Alto De La Cruz",
    "tagLine": "Mirador Alto De La Cruz",
    "image": "https://i.postimg.cc/rpt2cp4W/Vid-20210119-085325-1.gif",
    "images": [
      "https://i.postimg.cc/CK5MmC6S/Sin-t-tulo.png",
      "https://i.postimg.cc/GmcmsnFB/FB-IMG-16084702660667142.jpg",
      "https://i.postimg.cc/g2NkVtsg/Sin-t-tulo2.png",
      "https://i.postimg.cc/yNMJRSQn/sandra10.png",
      "https://i.postimg.cc/5NgFryyN/sandra1.png",
      "https://i.postimg.cc/PqppNM4P/app134.png",
      "https://i.postimg.cc/tTFsNC8b/sandra11.png",
      "https://i.postimg.cc/D0dbnyc6/sandra13.png",
      "https://i.postimg.cc/nrkMNSHw/VIDEO-sin-audio.gif"
    ],
    "description":
        "Con una imponente vista del Valle y la población, usado por peregrinos y astrónomos aficionados.",
    "price": 4
  },
  {
    "name": "Altos Mogotanos",
    "tagLine": "Altos Mogotanos",
    "image": "https://i.postimg.cc/2SKXJK4c/altos.gif",
    "images": [
      "https://i.postimg.cc/dt5gLnh8/2016-08-08.jpg",
      "https://i.postimg.cc/QMTzY30b/2016-12-26.jpg",
      "https://i.postimg.cc/4xMM1dby/2016-12-26-1.jpg",
      "https://i.postimg.cc/mD35RSx1/2017-03-04.jpg",
      "https://i.postimg.cc/90f8HRGG/12141552-449181091933135-2784600812326811577-n.jpg",
      "https://i.postimg.cc/fLQr6rPh/2019-08-22.jpg",
      "https://i.postimg.cc/rwcmvf9k/tent-camping-starry-sky-tents-wallpaper-preview.jpg",
      "https://i.postimg.cc/qMzbmKBr/12140579-449181175266460-6437282574177415784-n.jpg",
      "https://i.postimg.cc/3N3hKz2n/a.jpg",
      "https://i.postimg.cc/YSdwD3db/DSC-8584-Editar.jpg",
      "https://i.postimg.cc/ZRsqMTG6/cascada.jpg"
    ],
    "description":
        "Los Altos como el Yuco, Mela y Ganzo son usados como mirador de paisajes inigualables, por prapentistas y astrónomos aficionados.",
    "price": 10
  },
  {
    "name": "Escondidas/ Palo cortado",
    "tagLine": "Escondidas/ Palo cortado",
    "image": "https://i.postimg.cc/fRTZHTSs/Creado-con-Motionleap-51.gif",
    "images": [
      "https://i.postimg.cc/fRTZHTSs/Creado-con-Motionleap-51.gif",
      "https://i.postimg.cc/jScdzyRN/129814121-1068485273573960-3840648719372969885-n.jpg",
      "https://i.postimg.cc/j2GF6q7P/79921563-2524165951193781-5842635671369416704-n.jpg",
      "https://i.postimg.cc/8P63pv2H/127797897-727080271242290-6507815438108233441-n.jpg",
      "https://i.postimg.cc/9QHkrMVj/127711362-820530075392814-8147479489157181947-n.jpg",
      "https://i.postimg.cc/2jJMNGKy/127699904-107089391160615-3557083449500318503-n.jpg"
    ],
    "description":
        "Esta maravilla curiteña es visitada por los amantes de la aventura. No está demas aclarar que se llega más facil a ellas por el municipio de Mogotes.",
    "price": 21
  },
];
