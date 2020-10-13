import 'package:flutter/material.dart';
Widget header(BuildContext context)
{
 return  Container(
    height: MediaQuery.of(context).size.height/4,
     width: MediaQuery.of(context).size.width,
     decoration: BoxDecoration(
       color: Theme.of(context).primaryColor,
       borderRadius: BorderRadius.only(
           bottomRight: Radius.elliptical(450, 320),
           bottomLeft: Radius.elliptical(350, 150)),
     ));


}