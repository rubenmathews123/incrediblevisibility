import 'package:flutter/material.dart';

class TxtFrmField extends StatelessWidget {
  final String title;
  // final String hint;
  final String label;
  final TextEditingController? controller;

  final Icon? icon;
  final Widget? widget;
  const TxtFrmField({
    super.key,
    required this.title,
    // required this.hint,
    this.controller,
    this.widget,
    this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(color: Color(0xFF5D758E)),
        ),
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
                readOnly: widget == null ? false : true,
                autofocus: false,
                controller: controller,
                decoration: InputDecoration(
                    label: Text(label),
                    hintStyle: const TextStyle(color: Color(0xFF949AA7)),
                    icon: icon,
                    border: InputBorder.none,
                    // hintText: hint,
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent))),
              )),
              widget == null ? Container() : Container(child: widget)
            ],
          ),
        )
      ],
    );
  }
}
