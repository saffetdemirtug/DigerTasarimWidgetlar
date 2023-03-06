import 'package:flutter/material.dart';

class EklemeSayfasi extends StatelessWidget {
  //const EklemeSayfasi(PageStorageKey<String> keyEkle,  {super.key});
  const EklemeSayfasi(Key k) : super(key: k);  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade500,
      child: const Center(
        child: Text("EKLEME SAYFASI"),
      ),
    );
  }
}
