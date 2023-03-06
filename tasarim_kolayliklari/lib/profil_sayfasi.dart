import 'package:flutter/material.dart';

class ProfilSayfasi extends StatelessWidget {
  //const ProfilSayfasi(PageStorageKey<String> keyProfil,  {super.key});
  const ProfilSayfasi(Key k) : super(key: k);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.green.shade900,
      child: const Center(
        child: Text("PROFİL SAYFASI"),
      ),
    );
  }
}
