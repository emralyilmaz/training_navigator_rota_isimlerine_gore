import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      initialRoute: "/",
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {
        '/': (context) => Temel(),
        '/ikinci': (context) => IkinciSayfa(),
        UcuncuSayfa.rotaIsim: (context) => UcuncuSayfa()
      },
    ));

class Temel extends StatefulWidget {
  @override
  _TemelState createState() => _TemelState();
}

class _TemelState extends State<Temel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("İlk Sayfa"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ikinci');
              },
              child: Text("İkinci sayfaya geç"),
              color: Colors.yellow,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, UcuncuSayfa.rotaIsim,
                    arguments: Arguman("Argumanlı Sayfa", "Argumanlı İçerik"));
              },
              child: Text("Üçüncü sayfaya geç"),
            ),
          ],
        ));
  }
}

class IkinciSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci sayfa"),
      ),
      body: Center(
        child: RaisedButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.backspace),
          label: Text("Geri"),
          color: Colors.yellow,
        ),
      ),
    );
  }
}

class UcuncuSayfa extends StatelessWidget {
  static const rotaIsim = '/degisken';
  @override
  Widget build(BuildContext context) {
    final Arguman args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.baslik),
      ),
      body: Center(
        child: RaisedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.backspace),
            label: Text(args.icerik)),
      ),
    );
  }
}

class Arguman {
  final String baslik;
  final String icerik;
  Arguman(this.baslik, this.icerik);
}
