import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      initialRoute: "/",
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {
        '/': (context) => Temel(),
        '/ikinci': (context) => IkinciSayfa(),
        '/ucuncu': (context) => UcuncuSayfa()
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
                Navigator.pushNamed(context, '/ucuncu');
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Üçüncü sayfa"),
      ),
      body: Center(
        child: RaisedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.backspace),
            label: Text("Geri")),
      ),
    );
  }
}
