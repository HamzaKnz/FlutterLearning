import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/LastPage.dart';

class EditSayfasi extends StatelessWidget {
  EditSayfasi(this.isim, this.numara, this.telefon);

  String isim, numara, telefon;

  TextEditingController Ad = new TextEditingController();
  TextEditingController Soyisim = new TextEditingController();
  TextEditingController TelNo = new TextEditingController();
  TextEditingController Meslek = new TextEditingController();
  TextEditingController Miktar = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: Ad,
            decoration: InputDecoration(hintText: "ad "),
          ),
          TextField(
            controller: Soyisim,
            decoration: InputDecoration(hintText: "Soyisim "),
          ),
          TextField(
            controller: TelNo,
            decoration: InputDecoration(hintText: "TelNo "),
          ),
          TextField(
            controller: Meslek,
            decoration: InputDecoration(hintText: "meslek "),
          ),
          TextField(
            controller: Miktar,
            decoration: InputDecoration(hintText: "Miktar "),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    DialogRoute(
                      context: context,
                      builder: (context) => LastPage(Ad.text, Soyisim.text,
                          TelNo.text, Meslek.text, Miktar.text),
                    ));
              },
              child: Text("devam et!")),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.pop(context);
            },
            label: Icon(Icons.arrow_back),
            elevation: 6,
          )
        ],
      ),
    );
  }
}
