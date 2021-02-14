class BeachModel {
  String image;

  BeachModel(this.image);
}

List<BeachModel> beaches =
    beachesData.map((item) => BeachModel(item['image'])).toList();

var beachesData = [
  {
    "image":
        "https://i.postimg.cc/htdr4hRk/arrayanales.jpg"
  },
  {
    "image":
        "https://i.postimg.cc/pdMBmx2p/cascada.jpg"
  },
  {
    "image":
        "https://i.postimg.cc/9fPYTSM1/cascada2.jpg"
  },
  {
    "image":
        "https://i.postimg.cc/NGC71Rsh/cascada3.jpg"
  },
  {
    "image":
        "https://i.postimg.cc/hvYLcRy4/cascada4.jpg"
  },
  {
    "image":
        "https://i.postimg.cc/Ssy7GrY4/cascada5.jpg"
  },
  {
    "image":
        "https://i.postimg.cc/DZBQpX1X/cascada6.jpg"
  },
  {
    "image":
        "https://i.postimg.cc/hvvLkt03/jumm.jpg"
  },
  {
    "image":
        "https://i.postimg.cc/TYyjQh1K/rio.jpg"
  },
];
