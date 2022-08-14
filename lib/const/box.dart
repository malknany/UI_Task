// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import
import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  final String img;
  final String text1;
  final String text2;
  final Function onTap;
  final Color? col;
  const Box(
      {Key? key, required this.img, required this.text1, required this.onTap,required this.col,required this.text2})
      : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: widget.col,
          borderRadius: BorderRadius.circular(9),
        ),
        //margin: EdgeInsets.only(left: 40,right: 0,top: 5,bottom: 10),
        child: Material(
          borderRadius: BorderRadius.circular(11),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          type: MaterialType.transparency,
          child: InkWell(

              onTap: () {
                widget.onTap();
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top:10,left: 10,right: 10,bottom: 5),
                    child: Text(
                      widget.text1,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                      ),
                    ),
                  ),
                  Text(widget.text2,style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),),
                  Image.asset(
                    widget.img,
                    height: 120,
                    width: 135,
                    //todo : prefer using size with media query to avoid the overflow
                  ),

                ],
              )),
        ),
      ),
    );
  }
}
