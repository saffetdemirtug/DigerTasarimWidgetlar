import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim_kolayliklari/anasayfa.dart';
import 'package:tasarim_kolayliklari/arama_sayfasi.dart';
import 'package:tasarim_kolayliklari/drawer_menu.dart';
import 'package:tasarim_kolayliklari/ekleme_sayfasi.dart';
import 'package:tasarim_kolayliklari/profil_sayfasi.dart';
import 'package:tasarim_kolayliklari/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasarım Dersleri',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.blueGrey.shade900,
      ),
      home: const MyHomePage(title: 'Tasarım Dersleri'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  late List<Widget> tumSayfalar;
  late Anasayfa sayfaAna;
  late AramaSayfasi sayfaArama;
  late EklemeSayfasi sayfaEkle;
  late ProfilSayfasi sayfaProfil;

  var keyAnasayfa = const PageStorageKey("key_anasayfa");
  var keyArama = const PageStorageKey("key_arama");
  var keyEkle = const PageStorageKey("key_ekle");
  var keyProfil = const PageStorageKey("key_profil");

  @override
  void initState() {
    super.initState();
    sayfaEkle = EklemeSayfasi(keyEkle);
    sayfaProfil = ProfilSayfasi(keyProfil);
    sayfaAna = Anasayfa(keyAnasayfa);
    sayfaArama = AramaSayfasi(keyArama);
    tumSayfalar = [sayfaAna, sayfaArama, sayfaEkle, sayfaProfil];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasarım Dersleri"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      drawer: const DrawerMenu(),
      body: tumSayfalar[secilenMenuItem],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.blueGrey.shade900,
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
              ),
              activeIcon: Icon(Icons.home_sharp),
              label: "Anasayfa"),
          BottomNavigationBarItem(
              backgroundColor: Colors.blueGrey,
              icon: Icon(
                Icons.search,
              ),
              activeIcon: Icon(Icons.search_sharp),
              label: "Ara"),
          BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.add,
              ),
              activeIcon: Icon(Icons.add_sharp),
              label: "Ekle"),
          BottomNavigationBarItem(
              backgroundColor: Colors.brown,
              icon: Icon(
                Icons.account_box,
              ),
              activeIcon: Icon(Icons.account_box_sharp),
              label: "Profil"),
        ],
        type: BottomNavigationBarType
            .shifting, //shifting yerine fixed kullanılsaydı theme içindeki canvasColor kullanılacaktı.
        currentIndex: secilenMenuItem,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
            if (index == 3) {
              Navigator.of(context)
                  .push(CupertinoPageRoute(
                      builder: ((context) => const TabOrnek())))
                  .then((x) {
                secilenMenuItem = 0;
              });
            }
          });
        },
      ),
    );
  }
}
