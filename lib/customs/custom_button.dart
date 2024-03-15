import 'package:travel_friend_app/customs/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class CustomButton extends StatelessWidget {
  String title;
  void Function() onTap;

   CustomButton({
    required this.title,
    required this.onTap,
    super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        minSize: 0,
        padding: EdgeInsets.zero,
        onPressed: onTap,
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff734a34),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Center(
          child: Text(title,style: GoogleFonts.quando(
            fontSize: 30,
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            //
          )),
        ),
      )

    );
  }
}
