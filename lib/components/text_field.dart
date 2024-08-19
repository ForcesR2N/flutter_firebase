import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  final String txtHint;
  final bool txtObsure;
  final TextEditingController controller;

  const MyTextfield({
    super.key,
    required this.txtHint,
    required this.txtObsure,
    required this.controller,
  });

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  late bool _obsureText;

  @override
  void initState() {
    super.initState();
    _obsureText = widget.txtObsure;
  }

  void _toggleObsureText() {
    setState(() {
      _obsureText = !_obsureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        hintText: widget.txtHint,
        suffixIcon: widget.txtObsure
            ? IconButton(
                icon: Icon(
                  _obsureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: _toggleObsureText,
              )
            : null,
      ),
      obscureText: widget.txtObsure ? _obsureText : false,
      obscuringCharacter: "?",
    );
  }
}
