import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Loading {

  static bool isLoading = false;

  static void showLoading(BuildContext buildContext) {
    if (!isLoading) {
      isLoading = true;
      showGeneralDialog(context: buildContext,
          barrierDismissible:false,
          transitionDuration: const Duration(milliseconds: 150),
          pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.black54,
              child: CupertinoActivityIndicator(),
            ),
          ),
        );
          }).then((v){
            isLoading = false;
      });
    }
  }


  static void hideLoading(BuildContext context){
    if(isLoading)
      Navigator.of(context).pop();
  }

}