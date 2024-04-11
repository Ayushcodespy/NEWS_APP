import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String lable;
  final bool? isPassword;

  const CustomTextField(
      {super.key,
      required this.hint,
      required this.lable,
      this.isPassword = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var showpassword = false;
  makePasswordVisible() {
    setState(() {
      showpassword = !showpassword;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.isPassword! && !showpassword,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword == false
              ? null
              : Icon(showpassword == true ? Icons.lock_open : Icons.lock)
                  .onTap(() {
                  makePasswordVisible();
                }),
          hintText: widget.hint,
          labelText: widget.lable,
        ));
  }
}
