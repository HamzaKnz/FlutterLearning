import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardMaker extends StatelessWidget {
  CardMaker(this.Ad, this.Soyisim, this.TelNo, this.Meslek, this.Miktar);

  String Ad, Soyisim, TelNo, Meslek, Miktar;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(Ad),
            leading: Text(Soyisim),
          ),
          Divider(),
          ListTile(
            title: Text(TelNo),
            leading: Text(Meslek),
          ),
        ],
      ),
    );
  }
}
