class RecommendedModel3 {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;

  RecommendedModel3(
      this.name, this.tagLine, this.image, this.images, this.description);
}

List<RecommendedModel3> recommendations3 = recommendationsData3
    .map((item) => RecommendedModel3(item['name'], item['tagLine'],
        item['image'], item['images'], item['description']))
    .toList();

var recommendationsData3 = [
  {
    "name": "Hike",
    "tagLine": "Hike",
    "image": "https://i.postimg.cc/7ht4Tt0d/hike-edited.png",
    "images": [
      "https://i.postimg.cc/j2HctFRq/hik.jpg",
      "https://i.postimg.cc/zGsJjQ61/131138367-2849296625347377-2715731326496015324-n.jpg",
      "https://i.postimg.cc/52Y48JP3/130144607-2842770079333365-3124522441532813952-o.jpg",
      "https://i.postimg.cc/8c595Gnk/hike.jpg",
      "https://i.postimg.cc/ZqD4xftq/s.jpg",
      "https://i.postimg.cc/3J75mM4B/ca.jpg",
      "https://i.postimg.cc/CLf33hyS/cascada.jpg"
    ],
    "description":
        "Esta actividad realizada por fantásticos caminos rodeados de naturaleza y paisajes impresionantes. Al caminar, no sólo se camina a través de la hermosa naturaleza, sino también a través de la historia.",
  },
  {
    "name": "Senderismo",
    "tagLine": "Senderismo",
    "image": "https://i.postimg.cc/L8dtzCxc/hiker-846094-960-720.jpg",
    "images": [
      "https://i.postimg.cc/L8dtzCxc/hiker-846094-960-720.jpg",
      "https://i.postimg.cc/brC6yx8z/131894081-2851036988506674-1426336783594968928-o.jpg",
      "https://i.postimg.cc/NjWz2kXF/132429914-2854728401470866-6222622203427584913-n.jpg",
      "https://i.postimg.cc/m2gqvDRL/109146557-2710028745940833-951239204984424639-o.jpg",
      "https://i.postimg.cc/tCvfpjCh/132303751-2854728391470867-8703585195452990731-o.jpg",
      "https://i.postimg.cc/KzYvXJg6/cascada.jpg",
      "https://i.postimg.cc/y6L3Nphr/cascada.jpg",
      "https://i.postimg.cc/brfPYhC2/cascada.jpg",
      "https://i.postimg.cc/t44j4D5D/cascada.jpg"
    ],
    "description":
        "Excursionismo a pie, caminatas que se realizan principalmente por senderos y caminos como una mezcla de actividad deportiva y turística, que se desarrolla principalmente en entornos naturales.",
  },
  {
    "name": "Rappel",
    "tagLine": "Rappel",
    "image": "https://i.postimg.cc/tJvYzXhC/Creado-con-Motionleap-40.gif",
    "images": [
      "https://i.postimg.cc/tJvYzXhC/Creado-con-Motionleap-40.gif",
      "https://i.postimg.cc/QNSzvFY2/cascada.jpg",
      "https://i.postimg.cc/CKmDwVyx/cascada.jpg",
      "https://i.postimg.cc/3wJ1X1YW/cascada.jpg",
      "https://i.postimg.cc/BZxFvDfz/cascada.jpg",
      "https://i.postimg.cc/G2Rcg4gB/cascada.jpg"
    ],
    "description":
        "Es una técnica que permite descender por una pared vertical. A través de un arnés, una soga y un descenso, la persona puede bajar de un modo seguro, logrando sortear un precipicio con relativa facilidad.",
  },
  {
    "name": "Espeleologia",
    "tagLine": "Espeleologia",
    "image":
        "https://i.postimg.cc/mkkr14xQ/122896791-1558311571020076-4473583349532969291-n.jpg",
    "images": [
      "https://i.postimg.cc/mkkr14xQ/122896791-1558311571020076-4473583349532969291-n.jpg",
      "https://www.chiapasparalelo.com/wp-content/uploads/2019/09/Cuevas-3.jpeg",
      "https://i.postimg.cc/2yXHkkwg/55895-10150324960515529-2818150-o.jpg",
      "https://fcds.org.co/site/wp-content/uploads/2018/02/IMG_9694.jpg",
      "https://fcds.org.co/site/wp-content/uploads/2018/02/IMG_0445.jpg"
    ],
    "description":
        "Es un deporte que te conduce a conocer las entrañas de la tierra. Es decir, es un deporte extremo encargado de la exploración de cavernas.",
  },
  {
    "name": "Ciclomontañismo",
    "tagLine": "Ciclomontañismo",
    "image":
        "https://i.postimg.cc/m2FHmYq7/CAMPEONA-NACIONAL-DE-CICLOMONTA-ISMO.jpg",
    "images": [
      "https://i.postimg.cc/m2FHmYq7/CAMPEONA-NACIONAL-DE-CICLOMONTA-ISMO.jpg",
      "https://i.postimg.cc/x1DbhkDh/maxresdefault.jpg",
      "https://i.postimg.cc/9fcwXvfB/Copa-de-Occidente.jpg",
      "https://i.postimg.cc/L6N8Bn4j/IMG-20170625-130926.jpg",
      "https://i.postimg.cc/0NZMzcM1/IMG-20190113-105837.jpg",
      "https://i.postimg.cc/Gmx5R9Xw/cascada.jpg",
      "https://i.postimg.cc/7ZKnXzB6/cascada.jpg",
      "https://i.postimg.cc/7Lf3N8xc/cascada.jpg",
      "https://i.postimg.cc/QCsKwR3j/cascada.jpg",
      "https://i.postimg.cc/Sx52kXhT/cascada.jpg",
      "https://i.postimg.cc/1574rgfm/cascada.jpg"
    ],
    "description":
        "Considerado un deporte de riesgo, es un ciclismo de competición realizado en circuitos naturales generalmente a través de bosques por caminos angostos con cuestas empinadas y descensos muy rápidos.",
  },
  {
    "name": "Cabalgata",
    "tagLine": "Cabalgata",
    "image": "https://i.postimg.cc/sgCCWz75/4.png",
    "images": [
      "https://i.postimg.cc/sgCCWz75/4.png",
      "https://i.postimg.cc/N0b3ZrVx/68650655-2180082122289718-3499092732016590848-o.jpg",
      "https://i.postimg.cc/43JC818d/cabalgatas-cali.jpg",
      "https://i.postimg.cc/9MM62QHH/carcab02.jpg",
      "https://i.postimg.cc/k4pkgP76/Dt-NCXb-RXc-AEx5-FU.jpg",
      "https://i.postimg.cc/rp8GR0b8/cascada.jpg",
      "https://i.postimg.cc/sftNQmJs/cascada.jpg",
      "https://i.postimg.cc/X7Ss7JVv/cascada.jpg"
    ],
    "description":
        "Recorrer bellos escenarios a lomo de caballo es factible en toda la geografía mogotana. travesías de varios días cuyo atractivo central son las cabalgatas por entornos agrestes de exquisita belleza natural.",
  },
  {
    "name": "Camping",
    "tagLine": "Camping",
    "image":
        "https://i.postimg.cc/TPRsf3vY/131977599-2019769528170869-1456373250643508908-n.jpg",
    "images": [
      "https://i.postimg.cc/TPRsf3vY/131977599-2019769528170869-1456373250643508908-n.jpg",
      "https://i.postimg.cc/jjZF5YR6/131430435-388922232182449-1379957740855214513-n.jpg",
      "https://i.postimg.cc/DZ0Y4pz9/126848940-442968720186607-8477347752660852060-n.jpg",
      "https://i.postimg.cc/Px7VWbpP/132013107-309495930355437-275359955774323960-n.jpg",
      "https://i.postimg.cc/X7bmQ81C/d454e69741bd0a9b99b7be715231d36d.jpg"
    ],
    "description":
        "Estarás rodeado de Naturaleza, probablemente encontrarás animales que hacen parte del ecosistema natural de Mogotes",
  },
  {
    "name": "Trail Running",
    "tagLine": "Trail Running",
    "image": "https://i.postimg.cc/FH6rb4Hp/Sin-t-tulo.png",
    "images": [
      "https://i.postimg.cc/FH6rb4Hp/Sin-t-tulo.png",
      "https://i.postimg.cc/bv3JCsvN/cascada.jpg",
      "https://i.postimg.cc/5ym98QXQ/running-in-the-mud.jpg",
      "https://i.postimg.cc/bY0w7WmY/trail-Running-Pulso-Runner.jpg",
      "https://i.postimg.cc/HLZMJSX2/cascada.jpg",
      "https://i.postimg.cc/Xq3nnWqD/cascada.jpg",
      "https://i.postimg.cc/pL7xpzyj/cascada.jpg",
      "https://i.postimg.cc/0yKFX326/cascada.jpg"
    ],
    "description":
        "Trail running según la distancia a correr: Trail: < 42 kilómetros. Trail ultra medium: 42 y 69 kilómetros. Trail L: 70 y 99 kilómetros. Trail XL: + 100 kilómetros.",
  },
  {
    "name": "Canyoning",
    "tagLine": "Canyoning",
    "image": "https://i.postimg.cc/y60KX6yf/08-01-2021-14-56-59-2150000.gif",
    "images": [
      "https://i.postimg.cc/mZ9LXyBy/Creado-con-Motionleap-50.gif",
      "https://i.postimg.cc/SjFVcpxp/cascada.jpg",
      "https://i.postimg.cc/5ymvj01n/canyoning-extremo-jardin.png",
      "https://i.postimg.cc/6QDCmgYL/c7d55e84029f92385f5dda4b14a3afcd.jpg",
      "https://i.postimg.cc/PJHYtZGC/CANYONING-LA-NARIZ-DEL-DIABLO-1024x768.jpg",
      "https://i.postimg.cc/ydc04jGq/Family-Canyoning-Slovenia.jpg",
      "https://i.postimg.cc/c4sw2QMj/ypvi5wvnfbgpmtwajhrz.png",
      "https://i.postimg.cc/FRS9DjxX/cascada.jpg",
      "https://i.postimg.cc/zDSNvDt7/cascada.jpg"
    ],
    "description":
        "Es un deporte que conjuga descenso con cuerdas, nado, salto y escalada. Saca tu fuerza interior y además, te permite disfrutar de la naturaleza de una forma segura y dinámica.",
  },
  {
    "name": "Parapente",
    "tagLine": "Parapente",
    "image": "https://i.postimg.cc/J4jntN2h/Mogotes-Fly-1-1.gif",
    "images": [
      "https://i.postimg.cc/Wz5vC7p2/para1.png",
      "https://i.postimg.cc/VLN1M245/para2.png",
      "https://i.postimg.cc/pLwtwrvn/para3.png",
      "https://i.postimg.cc/kg6mY80m/para4.png",
      "https://i.postimg.cc/BQw3CNwp/para5.png"
    ],
    "description":
        "Un vuelo con pilotos certificados admirando el paisaje Mogotano despegando desde Alto Cacaos o Alto la Mela donde incluye todo el equipo necesario. ",
  },
];
