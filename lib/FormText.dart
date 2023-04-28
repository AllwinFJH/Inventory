import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inventory/InventoryDetail.dart';
import 'package:flutter/src/rendering/box.dart';

class FormText extends StatefulWidget {
  final double radiaval;
  final String texthind;
  final Color bcolor;
  var textCont;
  FormText({
    required this.radiaval,
    required this.texthind,
    required this.bcolor,
    required this.textCont,
  });

  @override
  State<FormText> createState() => _FormTextState();
}

class _FormTextState extends State<FormText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radiaval)),
          borderSide: BorderSide(color: widget.bcolor),
          // Color(0XFF92191C)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.radiaval),
          ),
          borderSide: BorderSide(
            color: widget.bcolor,
          ),
        ),
        fillColor: widget.bcolor,
        label: Text(widget.texthind),
        // hintText: widget.texthind,
        labelStyle: TextStyle(
            color: widget.bcolor,
            fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      ),
      style: TextStyle(
        color: widget.bcolor,
      ),
      controller: widget.textCont,
    );
  }
}
