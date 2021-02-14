class RecommendedModelcopy {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;

  RecommendedModelcopy(
      this.name, this.tagLine, this.image, this.images, this.description);
}

List<RecommendedModelcopy> recommendationscopy = recommendationsDatacopy
    .map((item) => RecommendedModelcopy(item['name'], item['tagLine'],
        item['image'], item['images'], item['description']))
    .toList();

var recommendationsDatacopy = [
  {
    "name": "Aviturismo",
    "tagLine": "Aviturismo",
    "image": "https://i.postimg.cc/Wb76Hy4F/000197950-W.jpg",
    "images": [
      "https://i.postimg.cc/Wb76Hy4F/000197950-W.jpg",
      "https://i.postimg.cc/13C09Nwy/b1d117ed-fdf0-4b60-9301-4c3d297ca8b2.jpg",
      "https://i.postimg.cc/YST1FKdV/DSCN0132.jpg",
      "https://i.postimg.cc/HLrwjs9X/EPl-Er-Kk-XUAEMNPK.jpg",
      "https://i.postimg.cc/KzLtrqVY/large.jpg",
      "https://i.postimg.cc/GhCf5ZC5/cascada.jpg"
    ],
    "description":
        "Observa e identifica aves en su hábitat natural, conéctate con la naturaleza, admira la belleza y escucha los sonidos de la naturaleza.  ",
  },
  {
    "name": "Vivencias Rurales",
    "tagLine": "Vivencias Rurales",
    "image": "https://i.postimg.cc/N0YGn7Wn/recolector-campesino-cafe.jpg",
    "images": [
      "https://i.postimg.cc/rmXd8YDH/cafetero.jpg",
      "https://i.postimg.cc/hvGf5b7n/7.jpg",
      "https://i.postimg.cc/Yqhx4QDT/1073061-1.jpg",
      "https://i.postimg.cc/y6RfDkyN/app106.png",
      "https://i.postimg.cc/m2GmCBmy/app131.png"
          "https://i.postimg.cc/Nf7pxSVq/app135.png",
      "https://i.postimg.cc/PrpqvqWS/46web.jpg",
      "https://i.postimg.cc/J4rQVKHx/cascada.jpg",
      "https://i.postimg.cc/1XYfhnpq/66825972-1199146563591575-1628620522874525795-n.jpg",
      "https://i.postimg.cc/R0QhCb79/la-caja-de-panela-se-vende-a-52-000-un-precio-historico-VL377679-MG18744363.jpg",
      "https://i.postimg.cc/rsqjF2gn/cascada.jpg",
      "https://i.postimg.cc/43Vchhhn/cascada.jpg",
      "https://i.postimg.cc/QxvVkdD7/cascada.jpg",
      "https://i.postimg.cc/9FJy0hKM/app110.png"
          "https://i.postimg.cc/XYM7B1Kc/cascada.jpg",
      "https://i.postimg.cc/6qTp0WD5/MJMN5-R4-HK5-DXVL4-TOSMFD7-OSUU.jpg",
      "https://i.postimg.cc/VkRvyBMq/cascada.jpg",
      "https://i.postimg.cc/597mJL5M/cascada.jpg",
      "https://i.postimg.cc/WzhgzYmc/cascada.jpg",
      "https://i.postimg.cc/8CpFsnDX/cascada.jpg",
      "https://i.postimg.cc/Qd013WWT/cascada.jpg",
      "https://i.postimg.cc/1txth9MF/cascada.jpg",
      "https://i.postimg.cc/HndknBqs/cascada.jpg",
      "https://i.postimg.cc/SNBtkZQg/17620484-1328965467142905-8963854153168823898-o.jpg"
    ],
    "description":
        "El Turismo Rural, donde se valora las vivencias con las actividades del campo, la experiencia del contacto con la población y con las personas que los acogen.",
  },
  {
    "name": "Cultura",
    "tagLine": "Cultura",
    "image":
        "https://i.postimg.cc/CKkR9xPv/b2d8ab-097050aade03452c91b5142750f365c6-mv2-d-3909-2404-s-4-2.png",
    "images": [
      "https://i.postimg.cc/CKkR9xPv/b2d8ab-097050aade03452c91b5142750f365c6-mv2-d-3909-2404-s-4-2.png",
      "https://i.postimg.cc/0y6Mdfp1/b2d8ab-9085f90bd3d04085b50835c2ddebbce5-mv2-d-4608-3456-s-4-2.png",
      "https://i.postimg.cc/L8rqy1TY/b2d8ab-98037310c2ac46e380de36ff2a9b4448-mv2-d-3456-4608-s-4-2.jpg",
      "https://i.postimg.cc/HxtVsPCX/b2d8ab-b2d16abe8341432ebff8734838b9a0fd-mv2-d-3386-2288-s-2.png",
      "https://i.postimg.cc/Y97v7BTt/b2d8ab-ba7925f407794844a9d0bb28d38249c6-mv2-d-3221-2366-s-2.png",
      "https://i.postimg.cc/QdsHVxrJ/cascada.jpg",
      "https://i.postimg.cc/2jhkvRGc/cascada.jpg",
      "https://i.postimg.cc/NG6tF8GZ/cascada.jpg",
      "https://i.postimg.cc/zvJcVg01/cascada.jpg",
      "https://i.postimg.cc/PqSv8Lbk/cascada.jpg",
      "https://i.postimg.cc/BQGZ4xkw/cascada.jpg"
    ],
    "description":
        "Las tradiciones y expresiones sirven para transmitir conocimientos, valores culturales, sociales y una memoria colectiva. Son fundamentales para mantener vivas las culturas. Una forma de rescatar y salvaguardar las tradiciones.",
  },
  {
    "name": "Gastronomía",
    "tagLine": "Gastronomía",
    "image": "https://i.postimg.cc/tJLQtfmV/app94.png",
    "images": [
      "https://i.postimg.cc/65JYNtRG/84735050-10159215958855828-4705605575822540800-o.jpg",
      "https://i.postimg.cc/tJLQtfmV/app94.png",
      "https://i.postimg.cc/FzKsn2ZW/8987045.jpg",
      "https://i.postimg.cc/QMS2nVyD/app104.png",
      "https://i.postimg.cc/5281p4J9/app109.png",
      "https://i.postimg.cc/Bvs3VrZT/app112.png",
      "https://i.postimg.cc/7LyPyC9T/app130.png",
      "https://i.postimg.cc/tTTK0yKx/app89.png",
      "https://i.postimg.cc/TPR89nQQ/app90.png",
      "https://i.postimg.cc/bw0ckm0s/app91.png",
      "https://i.postimg.cc/NMdQTdc1/app114.png",
      "https://i.postimg.cc/fWgwRq5s/app126.png",
      "https://i.postimg.cc/WzKjYttz/app127.png",
      "https://i.postimg.cc/3R8KdPP8/app133.png",
      "https://i.postimg.cc/Fz1kJf2H/app20.png",
      "https://i.postimg.cc/9XN7Hp7R/app21.png",
      "https://i.postimg.cc/j5MJ5631/app22.png",
      "https://i.postimg.cc/jjrfkSJM/app23.png",
      "https://i.postimg.cc/dtprrBQP/app24.png",
      "https://i.postimg.cc/G2LydgKY/app25.png",
      "https://i.postimg.cc/zXVTyMrF/app33.png",
      "https://i.postimg.cc/j5cyfY2Z/app34.png",
      "https://i.postimg.cc/Wzp6YbCB/app35.png",
      "https://i.postimg.cc/J0dJT3bX/app36.png",
      "https://i.postimg.cc/3NwmCfD7/app37.png",
      "https://i.postimg.cc/HLQwpygG/app38.png",
      "https://i.postimg.cc/xCnKq1fX/app39.png",
      "https://i.postimg.cc/X7zcxW8P/app40.png",
      "https://i.postimg.cc/c18s6Mz8/app77.png",
      "https://i.postimg.cc/4NVN2bbT/app81.png",
      "https://i.postimg.cc/VLqmWsmf/app82.png",
      "https://i.postimg.cc/BbDsy4FC/app84.png",
      "https://i.postimg.cc/sgzfkQwG/app85.png",
      "https://i.postimg.cc/kX37SRrY/app86.png",
      "https://i.postimg.cc/7LsxJBDS/app87.png",
      "https://i.postimg.cc/PxCdWmr9/app88.png",
      "https://i.postimg.cc/NfHwfs58/app92.png",
      "https://i.postimg.cc/xCpSqqv5/app93.png",
      "https://i.postimg.cc/fTpTBq0C/cascada-15.jpg",
      "https://i.postimg.cc/XqD7MQ1V/cascada-16.jpg",
      "https://i.postimg.cc/q7XJBkDD/Sin-t-tulo10.png",
      "https://i.postimg.cc/fLCRCwxS/Sin-t-tulo12.png",
      "https://i.postimg.cc/FsMk7HGh/Sin-t-tulo21.png",
      "https://i.postimg.cc/3J4D8vXL/Sin-t-tulo22.png"
    ],
    "description":
        "Hace parte fundamental de la diversidad cultural del municipio, es uno de los atractivos más fuertes, ya que Mogotes ofrece una riquísima variedad de comidas típicas.",
  },
  {
    "name": "Religion",
    "tagLine": "Religion",
    "image":
        "https://i.postimg.cc/RhghdqSN/80659f1bf96aaf2219542d5a525a6075.jpg",
    "images": [
      "https://i.postimg.cc/RhghdqSN/80659f1bf96aaf2219542d5a525a6075.jpg",
      "https://i.postimg.cc/Kcf1xpPx/b2d8ab-59586be88acd4fc199ee2959493647d5-mv2-d-4370-3191-s-4-2.png",
      "https://i.postimg.cc/SRSjccpB/b2d8ab-84772a9475ec4cd986b9249703fffb9c-mv2-d-3456-4608-s-4-2.png",
      "https://i.postimg.cc/tCm7V1vc/Retabl-Mogo.png",
      "https://i.postimg.cc/9Mtr4JsP/5211-119254815891-7800425-n.jpg",
      "https://i.postimg.cc/1zpxX6Dv/cascada.jpg",
      "https://i.postimg.cc/2j0s1CBN/cascada.jpg",
      "https://i.postimg.cc/zB0cHkvF/cascada.jpg",
      "https://i.postimg.cc/C52rmLjZ/cascada.jpg",
      "https://i.postimg.cc/C59Jbrgk/cascada.jpg",
      "https://i.postimg.cc/9XD6wvP4/cascada.jpg",
      "https://i.postimg.cc/htB6wvkx/cascada.jpg",
      "https://i.postimg.cc/8CyYjHjB/cascada.jpg",
      "https://i.postimg.cc/HsQPQHrL/cascada.jpg",
      "https://i.postimg.cc/VNH7YkVK/cascada.jpg",
      "https://i.postimg.cc/yYzL65LC/cascada.jpg",
      "https://i.postimg.cc/VLYXVc7v/cascada.jpg",
      "https://i.postimg.cc/dt4GMSXB/cascada.jpg"
    ],
    "description":
        "El viajero renueva su fe y busca una cierta paz interior, afianza su creencia, involucra sentimientos de esperanza, agradecimiento, convivencia, y acercamiento a las creencias religiosas.",
  },
  {
    "name": "Poblaciones",
    "tagLine": "Poblaciones",
    "image": "https://i.postimg.cc/x1CxtZRC/mogotes.jpg",
    "images": [
      "https://i.postimg.cc/rsj1y8Vh/cascada.jpg",
      "https://i.postimg.cc/7hkt9Ys8/7cbba2264e1dd9631c2cdbcea4b47bdc.jpg",
      "https://i.postimg.cc/FsGCbv08/75238434-578500089571404-346235652464687059-n.jpg",
      "https://i.postimg.cc/zXqPRvHT/73455934-2586605214761896-2180905789635076015-n.jpg",
      "https://i.postimg.cc/FFyBR3z9/2.jpg",
      "https://i.postimg.cc/hjx3V701/1.jpg",
      "https://i.postimg.cc/BZhvJ9SX/cascada.jpg",
      "https://i.postimg.cc/FFxTRp8f/cascada.jpg"
    ],
    "description": "Mogotes y Pituguao, Pueblos Patrimonio de Santander",
  },
];
