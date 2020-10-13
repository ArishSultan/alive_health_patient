import 'package:flutter/material.dart';
Widget footer(BuildContext context)
{

  return Container(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius:
        BorderRadius.only(topLeft: Radius.elliptical(250, 200)),
      ));
}