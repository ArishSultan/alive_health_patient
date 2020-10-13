
import 'package:flutter/material.dart';

Widget container(Widget textField)

{
  return    Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
        decoration: BoxDecoration(


            boxShadow: [
              //  color:Colors.white
              BoxShadow(
                color:Colors.white,
                offset: Offset(0,0),
                blurRadius: 300,
                //   spreadRadius: 2
              )]
        ),
        child: textField
    ),
  );

}

openLoadingDialog(BuildContext context, String text) {
  showDialog(
      barrierColor: Colors.orange,
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        content: Row(children: <Widget>[
          SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                  strokeWidth: 1,
                  valueColor: AlwaysStoppedAnimation(Colors.black))),
          SizedBox(width: 10),
          Text(text)
        ]),
      ));
}

openMessageDialog(BuildContext context, String text) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        content: Column(
          children: <Widget>[
            Text(text),
            Align(
              alignment: Alignment.topRight,
              child: MaterialButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.pop(context);
                },
                minWidth: 0,
              ),
            ),
          ],
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ));
}