// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  const MyTextField(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.controller,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.brown),
            ),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            filled: true,
            fillColor: Colors.white54,
            hintText: hintText,
            hintStyle: GoogleFonts.sacramento(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
      ),
    );
  }
}
