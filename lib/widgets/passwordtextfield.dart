import 'package:flutter/material.dart';

class TXtPassWordField extends StatefulWidget {
  const TXtPassWordField({super.key});

  @override
  State<TXtPassWordField> createState() => _TXtPassWordFieldState();
}

class _TXtPassWordFieldState extends State<TXtPassWordField> {
  bool _showpassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 57,
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: const Color(0xFFEDF2F7),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                style: const TextStyle(color: Color(0xFF5D758E)),
                autofocus: false,
                obscureText: _showpassword,
                decoration: InputDecoration(
                  label: const Text("Password"),
                  hintStyle: const TextStyle(color: Color(0xFF949AA7)),
                  icon: const Icon(Icons.lock),
                  border: InputBorder.none,
                  // hintText: "Password",
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showpassword = !_showpassword;
                      });
                    },
                    child: Icon(
                      _showpassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}
