import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incrediblevisibility/widgets/buttons.dart';
import 'package:incrediblevisibility/widgets/passwordtextfield.dart';
import 'package:incrediblevisibility/widgets/textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_back_rounded,
                  size: 26,
                ),
                SizedBox(width: width * 0.10),
                Text(
                  "Log In",
                  style: GoogleFonts.poppins(
                      fontSize: 21, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: height * 0.04),
            Text("Welcome back!", style: GoogleFonts.poppins(fontSize: 14)),
            Text("Please login to continue!",
                style: GoogleFonts.poppins(fontSize: 14)),
            SizedBox(height: height * 0.04),
            const TxtFrmField(
              title: "",
              label: "Email Address",
              icon: Icon(Icons.email),
            ),
            SizedBox(height: height * 0.03),
            const TXtPassWordField(),
            SizedBox(height: height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?", style: GoogleFonts.poppins())
              ],
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlackButtons(title: "Login", onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
