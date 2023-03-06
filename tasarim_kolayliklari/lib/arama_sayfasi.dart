import 'package:flutter/material.dart';

class AramaSayfasi extends StatelessWidget {
  //const AramaSayfasi(PageStorageKey<String> keyArama, {super.key});
  const AramaSayfasi(Key k) : super(key: k);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemExtent: 300,
        itemCount: 200,
        itemBuilder: (
          context,
          index,
        ) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(35),
              color: index % 2 == 0
                  ? Colors.blueGrey.shade900
                  : Colors.teal.shade900,
              child: Center(
                child: Text(
                  index.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
          );
        });
  }
}
