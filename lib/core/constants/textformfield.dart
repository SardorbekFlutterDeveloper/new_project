import 'package:flutter/material.dart';

class TextFormFieldd {
  static InputDecoration inputDecoration(String hint,) =>
      InputDecoration(
        hintStyle: TextStyle(),
        hintText: hint,
        
        border: const UnderlineInputBorder(), 
      );
}
