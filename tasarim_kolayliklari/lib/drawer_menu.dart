import 'package:flutter/material.dart';


class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Saffet Demirtuğ"),
            accountEmail: const Text("saffetdemirtug@gmail.com"),
            currentAccountPicture: Image.network(
                "https://w7.pngwing.com/pngs/745/777/png-transparent-symbol-computer-icons-letter-font-letter-s-miscellaneous-angle-text-thumbnail.png"),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Text("SD"),
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Text("MYD"),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                InkWell(
                  splashColor: Colors.blueGrey.shade900,
                  onTap: () {},
                  child: const ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Anasayfa"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
                InkWell(
                  splashColor: Colors.blueGrey.shade900,
                  onTap: () {},
                  child: const ListTile(
                    leading: Icon(Icons.account_box_rounded),
                    title: Text("Profil"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
                InkWell(
                  splashColor: Colors.blueGrey.shade900,
                  onTap: () {},
                  child: const ListTile(
                    leading: Icon(Icons.call_sharp),
                    title: Text("Ara"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
                const Divider(),
                const AboutListTile(
                  //Lisansları default olarak paylaşabiliriz.
                  applicationName: "Tasarım Dersleri",
                  applicationIcon: Icon(
                    Icons.ios_share_outlined,
                  ),
                  applicationVersion: "7.7.7",
                  icon: Icon(
                    Icons.ios_share_outlined,
                  ),

                  aboutBoxChildren: [
                    Text("Deneme 1"),
                    Text("Deneme 2"),
                    Text("Deneme 3"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
