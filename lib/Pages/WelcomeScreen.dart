import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incrediblevisibility/Pages/LoginScreen.dart';
import 'package:incrediblevisibility/Pages/RegisterScreen.dart';
import 'package:incrediblevisibility/widgets/buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF0F1012),
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(height: height * 0.2),
            Image.asset(
              'assets/images/IVS-Logo.jpg',
              height: height * 0.25,
              fit: BoxFit.fitHeight,
            ),
            Text(
              "Incredible Visibility",
              style: GoogleFonts.poppins(
                fontSize: 21,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Crafting Incredible Experience for",
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: Colors.white,
              ),
            ),
            Text(
              "Mordern Brands",
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: Colors.white,
              ),
            ),
            SizedBox(height: height * 0.04),
            BlackButtons(
              title: "Create Account",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const RegisterScreen(), //Navigate to Registrationi Page
                  ),
                );
              },
            ),
            SizedBox(height: height * 0.03),
            WhiteButtons(
              title: "Login",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const LoginScreen(), //Navigate to Login screen
                  ),
                );
              },
            ), //Reusable button
            SizedBox(height: height * 0.18),
            Text(
              "By creating an account, you agree to our ",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Text(
                    "Terms & Conditions ",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () => launchUrl(
                    Uri.parse("https://google.com"),
                  ),
                ), // for hyperlink
                Text(
                  "and agree to ",
                  style: GoogleFonts.poppins(fontSize: 10, color: Colors.white),
                ),
                InkWell(
                  child: Text(
                    "Privacy Policy",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
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
