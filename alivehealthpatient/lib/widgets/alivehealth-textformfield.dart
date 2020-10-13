import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AliveHealthTextFormField extends StatelessWidget {
  final String lable;
  final Icon icon;
  Function validator;

  bool obscureText;
  TextInputType keyboardType;

  TextEditingController controller;

  AliveHealthTextFormField(
      {this.icon,
      this.lable,
      this.controller,
      this.validator,
      this.obscureText = false,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.06,
      padding: EdgeInsets.only(left: 15.0, bottom: 5),
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
          border: InputBorder.none,
          prefixIcon: icon,
          hintText: lable,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          //
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(
          //
          //         color: Colors.white
          //     ),
          //     borderRadius: BorderRadius.circular(70.0)
          // )
        ),
      ),
    );
  }
}
