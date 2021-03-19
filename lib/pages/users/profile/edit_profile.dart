import 'package:easy_buy/components/app_drawer.dart';
import 'package:flutter/material.dart';

import 'profile_form.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "é".toUpperCase() + 'dition',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 25.0),
                Text(
                  "Complétez vos coordonnées ou continuez  \navec les médias sociaux",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                ProfileForm(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "En poursuivant votre confirmation, vous acceptez \navec nos termes et conditions",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
