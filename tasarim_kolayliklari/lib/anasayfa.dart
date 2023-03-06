import 'package:flutter/material.dart';
import 'package:tasarim_kolayliklari/model/veri.dart';

class Anasayfa extends StatefulWidget {
  //const Anasayfa(PageStorageKey<String> keyAnasayfa,  {super.key});
  const Anasayfa(Key k) : super(key: k);
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  late List<Veri> tumVeriler;
  @override
  void initState() {
    super.initState();

    tumVeriler = [
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", true),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
      Veri("Başlık", "İçerik buraya gelecek.", false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tumVeriler.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            key: PageStorageKey("$index"),
            initiallyExpanded: tumVeriler[index]
                .aktiflikDurumu, //default olarak içerik açık olup olmayacağı burda belirleniyor.
            title: Text(
              tumVeriler[index].baslik,
              style: const TextStyle(fontSize: 25),
            ),
            children: [
              Container(
                color: index % 2 == 0
                    ? Colors.deepPurple.shade900
                    : Colors.grey.shade900,
                height: 50,
                width: double.infinity,
                child: Text(tumVeriler[index].icerik),
              )
            ],
          );
        });
  }
}
