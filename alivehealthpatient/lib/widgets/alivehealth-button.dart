
import 'package:flutter/material.dart';

class AliveHealthButton extends StatelessWidget {
  final Function ontap;

  final String text;
  AliveHealthButton({this.ontap,this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.5,
      height: MediaQuery.of(context).size.height*0.07,

      child: RaisedButton(
        color: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0)
          ),
          child: Text(text,style: TextStyle(color: Colors.white),),

          onPressed: ontap),
    );
  }
}
