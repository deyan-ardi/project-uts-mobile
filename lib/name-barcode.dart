import 'package:flutter/material.dart';
import 'nama-result-barcode.dart';

class NameBarcode extends StatefulWidget {
  @override
  _NameBarcodeState createState() => _NameBarcodeState();
}

class _NameBarcodeState extends State<NameBarcode> {
  String nama;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextName(),
            TextDescription(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new TextField(
                      onChanged: (txt) {
                        setState(() {
                          nama = txt;
                        });
                      },
                      autofocus: false,
                      cursorColor: Colors.white,
                      style: TextStyle(height: 1.5, color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Your Name",
                        hintStyle: TextStyle(color: Colors.white),
                        counterStyle: TextStyle(color: Colors.white),
                      ),
                      enabled: true,
                      maxLength: 10,
                      textAlign: TextAlign.center,
                      toolbarOptions: ToolbarOptions(
                        cut: true,
                        copy: true,
                        selectAll: true,
                        paste: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //height: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.white,
                textColor: Colors.red,
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 60, right: 60),
                onPressed: () {
                  if (nama != '' && nama.length <= 10) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NameResult(
                          nama: nama,
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  "Next Step",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.lightBlue,
    );
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'QR SCANNER',
        style: TextStyle(
          fontFamily: "Fonts1",
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      margin: const EdgeInsets.only(top: 30.0),
    );
  }
}

class TextDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Let us know you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
