import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text('BUGÜN NE YİYECEĞİZ'),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = Random().nextInt(5) + 1;
  int yemekNo = Random().nextInt(5) + 1;
  int tatliNo = Random().nextInt(5) + 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> tatliAdlari = [
    'Kadayıf Dolması',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'Dolma',
    'Balık'
  ];
  void degistir() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.yellow,
                  splashColor: Colors.blue,
                  onPressed: degistir,
                  child: Image.asset('assets/corba_$corbaNo.jpg'),
                ),
              ),
            ),
            Text(
              corbaAdlari[corbaNo - 1],
              style: TextStyle(fontSize: 20),
            ),
            Container(
              child: Divider(
                height: 5,
                color: Colors.indigo,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FloatingActionButton(
                    backgroundColor: Colors.purple,
                    splashColor: Colors.red,
                    onPressed: degistir,
                    child: Image.asset('assets/yemek_$yemekNo.jpg')),
              ),
            ),
            Text(
              yemekAdlari[yemekNo - 1],
              style: TextStyle(fontSize: 20),
            ),
            Container(
              child: Divider(
                height: 5,
                color: Colors.indigo,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  splashColor: Colors.green,
                  onPressed: degistir,
                  child: Image.asset(
                    'assets/tatli_$tatliNo.jpg',
                  ),
                ),
              ),
            ),
            Text(
              tatliAdlari[tatliNo - 1],
              style: TextStyle(fontSize: 20),
            ),
            Container(
              child: Divider(
                height: 12.0,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
