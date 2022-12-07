import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteButtons extends StatelessWidget {
  final String title;
  final GestureTapCallback onPressed;
  const WhiteButtons({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 37,
      child: ElevatedButton(
        onPressed: () {
          onPressed.call();
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        child: Text(
          title,
          style: GoogleFonts.poppins(fontSize: 11, color: Colors.black),
        ),
      ),
    );
  }
}

class BlackButtons extends StatelessWidget {
  final String title;
  final GestureTapCallback onPressed;

  const BlackButtons({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 37,
      child: ElevatedButton(
        onPressed: () {
          onPressed.call();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
        ),
        child: Text(
          title,
          style: GoogleFonts.poppins(fontSize: 11, color: Colors.white),
        ),
      ),
    );
  }
}
