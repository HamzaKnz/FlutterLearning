import 'package:flutter/material.dart';
import 'package:flutter_application_1/EditPage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController ad = new TextEditingController();
  TextEditingController soyad = new TextEditingController();
  TextEditingController tel = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("asset/appleLogo.png"),
          TextField(
              controller: ad,
              decoration: InputDecoration(
                hintText: "ad",
              )),
          TextField(
            controller: soyad,
            decoration: InputDecoration(
              hintText: "soyad",
            ),
          ),
          TextField(
            controller: tel,
            decoration: InputDecoration(
              hintText: "telefon",
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (ad.text != "" && soyad.text != "" && tel.text != "") {
                  Navigator.push(
                      context,
                      DialogRoute(
                        context: context,
                        builder: (context) =>
                            EditSayfasi(ad.text, soyad.text, tel.text),
                      ));
                } else if (ad.text == "" ||
                    soyad.text == "" && tel.text == "") {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                        title: Text(
                          "boş Birakamazsin",
                        ),
                        actions: [
                          Icon(Icons.warning),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("geri Dön"))
                        ]),
                  );
                }
              },
              child: Text("devam et"))
        ],
      ),
    );
  }
}
