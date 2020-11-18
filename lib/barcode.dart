import 'package:flutter/material.dart';
import 'name-barcode.dart';

class HomeBarcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Picture(),
            TextName(),
            TextDescription(),
            ContinueButton(),
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'The best solution for QR Code Scanner, development by Ganatech',
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

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/login.png",
          width: 280.0, fit: BoxFit.cover),
    );
  }
}

class ContinueButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: double.infinity,
      margin: EdgeInsets.only(top: 50),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: BorderSide(color: Colors.white)),
        color: Colors.white,
        textColor: Colors.red,
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 60, right: 60),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NameBarcode()),
          );
        },
        child: Text(
          "Continue",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ),
    );
  }
}
