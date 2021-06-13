import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Container> listFilm = new List();

  var data = [
    {"nama":"Hangout", "gambar":"hangout.jpeg", "time":"120"},
    {"nama":"Garis Biru", "gambar":"gb.jpg", "time":"220"},
    {"nama":"Adit Sopo Jarwo", "gambar":"adt.jpg", "time":"100"},
    {"nama":"Cinta Sejati", "gambar":"cs.jpg", "time":"60"},
    {"nama":"Cek Toko Sebelah", "gambar":"cek.jpg", "time":"100"},
    {"nama":"Habibie Ainun", "gambar":"habibie.jpg", "time":"110"},
    {"nama":"Takut Kawin", "gambar":"tk.jpg", "time":"150"},
    {"nama":"Yowis Ben", "gambar":"yowis.png", "time":"10"},
  ];
  
  _listItem() async{
    for (var i = 0; i < data.length; i++) {
      final list = data[i];
      final String gambar = list["gambar"];

      listFilm.add(new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Column(
            children: <Widget>[

              new Hero(
                tag: list['nama'],
                child: new Material(
                  child: new InkWell(
                    onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context)=> new Detail(nama: list['nama'], gambar: gambar,),
                      )),
                    child: new Image.asset("assets/images/$gambar", fit: BoxFit.cover,),
                  ),
                ),
              ),
              new Padding(padding: new EdgeInsets.all(10.0),),
              new Text(list["nama"], style: new TextStyle(fontSize: 16.0),)
            ],
            ),
          ),
        )
      );
    }
  }

  @override
  void initState() {
    _listItem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2, children: listFilm);
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama,this.gambar,});
  final String nama;
  final String gambar;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child: 
            new Hero(
              tag: nama,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("assets/images/$gambar", fit: BoxFit.cover,),
                ),
                ),
            )
          ),

          new BagianNama(nama: nama,),
          new BagianIcon(),
          new Keterangan(),


        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
      children: <Widget>[
        new Expanded(
                  child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                nama,
                 style: new TextStyle(fontSize: 20.0, color: Colors.yellow[700]),
                 ),
              new Text(
                "$nama\@gmail.com",
                 style: new TextStyle(fontSize: 17.0, color: Colors.black),
              ),
            ],
            ),
        ),

          new Row(
            children: <Widget>[
              new Icon(Icons.star,size: 25.0, color: Colors.yellow[700],),
              new Icon(Icons.star,size: 25.0, color: Colors.yellow[700],),
              new Icon(Icons.star,size: 25.0, color: Colors.yellow[700],),
              new Icon(Icons.star,size: 25.0, color: Colors.yellow[700],),
              new Icon(Icons.star,size: 25.0, color: Colors.black,),
            ],
          )
      ],
    )
    );
  }
  
}

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Iconteks(icon: Icons.timer, teks: "120 min",),
          new Iconteks(icon: Icons.date_range_outlined, teks: "2020",),
          new Iconteks(icon: Icons.share, teks: "Share",),
        ],
      ),
      
    );
  }
}

class Iconteks  extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
          child: new Column(
        children: <Widget>[
          new Icon(icon, size: 25.0, color: Colors.black),
          new Text(teks, style: new TextStyle(fontSize: 15.0, color: Colors.black)),
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  Keterangan({this.keterangan});
  final String keterangan;

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(8.0),
      child: new Text(
        "Film adalah gambar-hidup yang juga sering disebut movie. Film secara kolektif sering disebut sebagai sinema. Sinema itu sendiri bersumber dari kata kinematik atau gerak. Film juga sebenarnya merupakan lapisan-lapisan cairan selulosa, biasa di kenal di dunia para sineas sebagai seluloid.",
      style: new TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
    ),
    ),
    );
  }
}