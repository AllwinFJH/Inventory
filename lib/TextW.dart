import 'package:flutter/material.dart';

class TextW extends StatefulWidget {
  final String textDes;
  //final Color textColor;
  final double textSize;

  //const TextW({super.key});
  const TextW({
    super.key,
    required this.textDes,
    //required this.textColor,
    required this.textSize,
    //required this.texss,
    //required this.radiaV,
  });

  @override
  State<TextW> createState() => _TextWState();
}

class _TextWState extends State<TextW> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.textDes,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: widget.textSize,
          fontWeight: FontWeight.bold,
          color: const Color(0XFF92191C)),
    );
  }
}
