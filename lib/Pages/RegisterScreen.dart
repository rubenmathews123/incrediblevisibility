import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incrediblevisibility/widgets/buttons.dart';
import 'package:incrediblevisibility/widgets/passwordtextfield.dart';
import 'package:incrediblevisibility/widgets/textformfield.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            SizedBox(height: height * 0.02), //to give free space
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_back_rounded,
                  size: 26,
                ),
                SizedBox(width: width * 0.15),
                Text(
                  "Create Account",
                  style: GoogleFonts.poppins(fontSize: 21),
                ),
              ],
            ),
            SizedBox(height: height * 0.04),
            Text(
              "Sign up to keep exploring amazing",
              style: GoogleFonts.poppins(fontSize: 14),
            ),
            Text(
              "destinations around the world!",
              style: GoogleFonts.poppins(fontSize: 14),
            ),
            SizedBox(height: height * 0.04),
            const TxtFrmField(
              title: "",
              icon: Icon(Icons.account_circle_sharp),
              label: 'Full Name',
            ), //Reusable TextField
            SizedBox(height: height * 0.02),
            const TxtFrmField(
              title: "",
              icon: Icon(Icons.mail),
              label: 'Email Address',
            ),
            SizedBox(height: height * 0.02),
            const TxtFrmField(
              title: "",
              icon: Icon(Icons.today_rounded),
              label: 'Date of Birth',
            ),
            SizedBox(height: height * 0.02),
            const SizedBox(height: 15),
            const TXtPassWordField(),
            SizedBox(height: height * 0.02),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlackButtons(title: "Create Account", onPressed: () {}),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "By creating an account, you agree to our ",
              style: GoogleFonts.poppins(),
            ),
            Row(
              children: [
                InkWell(
                  child: Text(
                    "Terms & Conditions ",
                    style: GoogleFonts.poppins(color: Colors.blue),
                  ),
                  onTap: () => launchUrl(
                    Uri.parse("https://google.com"),
                  ),
                ), // for hyperlink
                Text(
                  "and agree to ",
                  style: GoogleFonts.poppins(),
                ),
                InkWell(
                  child: Text(
                    "Privacy Policy",
                    style: GoogleFonts.poppins(color: Colors.blue),
                  ),
                  onTap: () => launchUrl(
                    Uri.parse("https://google.com"),
                  ),
                ), // for hyperlink
              ],
            )
          ],
        ),
      ),
    );
  }
}
