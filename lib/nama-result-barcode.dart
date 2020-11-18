import 'package:flutter/material.dart';
import 'scanner.dart';
import 'maker.dart';

class NameResult extends StatelessWidget {
  NameResult({@required this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    String user = nama.toLowerCase();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Picture(),
            TextName(),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Hallo $user, Welcome to QR Scanner by Ganatech. For support and information go to our website ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            ScanButton(),
            MakerButton(),
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
        'WELCOME USER',
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

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/welcome.png",
          width: 280.0, fit: BoxFit.cover),
    );
  }
}

class ScanButton extends StatelessWidget {
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
            MaterialPageRoute(builder: (context) => MyApp()),
          );
        },
        child: Text(
          "Scan QR",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ),
    );
  }
}

class MakerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: double.infinity,
      margin: EdgeInsets.only(top: 10),
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
            MaterialPageRoute(builder: (context) => GenerateScreen()),
          );
        },
        child: Text(
          "Make QR",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ),
    );
  }
}
