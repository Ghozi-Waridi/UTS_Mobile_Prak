import 'dart:io';

import 'package:flutter/material.dart';

class Buttom_Custom extends StatelessWidget {
  final String nameBtn;
  final double heightBtn;
  final double widthBtn;
  final double paddingBtn;
  final double borderRadiusBtn;
  final Widget linkBtn;
  final Color colorBtn;
  final Color colorTextBtn;
  final double sizeFontTextBtn;
  const Buttom_Custom(
      {required this.nameBtn,
      required this.heightBtn,
      required this.widthBtn,
      required this.paddingBtn,
      required this.borderRadiusBtn,
      required this.linkBtn,
      required this.colorBtn,
      required this.colorTextBtn,
      required this.sizeFontTextBtn});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightBtn,
      width: widthBtn,
      padding: EdgeInsets.all(paddingBtn),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadiusBtn),
        color: colorBtn,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => linkBtn));
        },
        borderRadius: BorderRadius.circular(borderRadiusBtn),
        child: Text(nameBtn, 
        textAlign: TextAlign.center,
        style: TextStyle(
          color: colorTextBtn,
          fontSize: sizeFontTextBtn,
        ),),
      ),
    );
  }
}
