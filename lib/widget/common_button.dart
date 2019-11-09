import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final double width;
  final double height;
  final double fontSize;
  final String content;
  final VoidCallback callback;

  CommonButton(
      {@required this.callback,
      @required this.content,
      this.width = 250,
      this.height = 50,
      this.fontSize = 18,
        Key key
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: RaisedButton(
        onPressed: callback,
        color: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(
          Radius.circular(height/2)
        )),
        child: Text(
          content,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
