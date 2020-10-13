import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AliveHealthSearchField extends StatelessWidget {
  final String lable;
  final Icon icon;
  final IconButton iconTrailing;
  Function validator;
  Function onTap;
  bool obscureText;
  TextInputType keyboardType;
  TextEditingController controller;

  AliveHealthSearchField(
      {this.icon,
        this.iconTrailing,
      this.lable,
      this.controller,
      this.validator,
      this.obscureText = false,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      padding: EdgeInsets.only(left: 4.0, bottom: 1),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8.0)],
          borderRadius: BorderRadius.circular(50)),
      child: TextFormField(

        controller: controller,
        validator: validator,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          icon: iconTrailing ,
          border: InputBorder.none,
          prefixIcon: icon,
          hintText: lable,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
