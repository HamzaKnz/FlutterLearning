import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/CardMaker.dart';

class LastPage extends StatelessWidget {
  LastPage(this.Ad, this.Soyisim, this.TelNo, this.Meslek, this.Miktar);

  String Ad, Soyisim, TelNo, Meslek, Miktar;

  @override
  Widget build(BuildContext context) {
    List<Widget> w = [];

    for (var i = 0; i < int.parse(Miktar); i++) {
      w.add(CardMaker(Ad, Soyisim, TelNo, Meslek, Miktar));
    }

    return Scaffold(
      body: SingleChildScrollView(child: Column(children: w)),
    );
  }
}
