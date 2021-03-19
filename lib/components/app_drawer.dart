import 'package:easy_buy/pages/users/cart.dart';
import 'package:easy_buy/pages/users/home.dart';
import 'package:easy_buy/pages/users/products.dart';
import 'package:easy_buy/pages/users/profile/profile.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.home,
              text: "Accueil",
              onTap: () {
                changePage(
                  context: context,
                  page: Home(),
                );
              }),
          _createDrawerItem(
              icon: Icons.menu,
              text: "Produits",
              onTap: () {
                changePage(
                  context: context,
                  page: Products(),
                );
              }),
          _createDrawerItem(
              icon: Icons.notifications, text: "Notifications", onTap: () {}),
          _createDrawerItem(
              icon: Icons.shopping_bag,
              text: "Commandes",
              onTap: () {
                changePage(
                  context: context,
                  page: Cart(),
                );
              }),
          // _createDrawerItem(
          //     icon: Icons.check_box, text: "Ventes", onTap: () {}),
          // _createDrawerItem(
          //     icon: Icons.message, text: "Messages", onTap: () {}),
          _createDrawerItem(
              icon: Icons.person,
              text: "Mon compte",
              onTap: () {
                // changePage(
                //   context: context,
                //   page: Profile(),
                // );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Profile(),
                  ),
                );
              }),
          _createDrawerItem(
              icon: Icons.logout,
              text: "Déconnexion",
              onTap: () {
                // changePage(
                //   context: context,
                //   page: Profile(),
                // );
              }),
          Divider(),
          ListTile(
            title: Text(
              "Autres",
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          _createDrawerItem(
              icon: Icons.share,
              text: "Partager l'application",
              onTap: () {
                _share();
              }),
          _createDrawerItem(
              icon: Icons.refresh, text: "A propos", onTap: () {}),
        ],
      ),
    );
  }

  void changePage({BuildContext context, Widget page}) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('assets/easy_buy.png'),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "John Doe",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem({
    @required IconData icon,
    @required String text,
    @required GestureTapCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      // title: Row(
      //   children: <Widget>[
      //     Padding(
      //       padding: EdgeInsets.only(left: 8.0),
      //       child: Text(text),
      //     )
      //   ],
      // ),
      title: Text(text),
      onTap: onTap,
    );
  }

  void _share() async {
    Share.text("Easy buy", "https://www.google.com", "text/plain");
  }
}
