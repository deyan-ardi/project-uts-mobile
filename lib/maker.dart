import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';

class GenerateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GenerateScreenState();
}

class GenerateScreenState extends State<GenerateScreen> {
  static const double _topSectionTopPadding = 70.0;
  static const double _topSectionHeight = 70.0;
  GlobalKey globalKey = new GlobalKey();
  String _dataString = "Ganatech QR Code Maker";
  String _inputErrorText;
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _contentWidget(),
      backgroundColor: Colors.lightBlue,
    );
  }

  _contentWidget() {
    final bodyHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).viewInsets.bottom;
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: _topSectionTopPadding,
              left: 20.0,
              right: 10.0,
            ),
            child: Container(
              height: _topSectionHeight,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: "Enter a custom message",
                        hintStyle: TextStyle(color: Colors.white),
                        errorText: _inputErrorText,
                        counterStyle: TextStyle(color: Colors.white),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      maxLength: 25,
                      toolbarOptions: ToolbarOptions(
                        cut: true,
                        copy: true,
                        selectAll: true,
                        paste: true,
                      ),
                      cursorColor: Colors.white,
                      style: TextStyle(height: 1.5, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: FlatButton(
                      child: Text(
                        "GENERATE",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        setState(() {
                          _dataString = _textController.text;
                          _inputErrorText = null;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: RepaintBoundary(
                key: globalKey,
                child: QrImage(
                  data: _dataString,
                  size: 0.5 * bodyHeight,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
