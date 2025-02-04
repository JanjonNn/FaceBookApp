import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  bool obscureText;
  final TextEditingController controller;
  final String? Function(String?) validator;
  Widget? icon;

  CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    required this.validator,
    required this.icon,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      controller: widget.controller,
      validator: widget.validator,
      decoration: InputDecoration(
        suffixIcon: widget.icon != null
            ? IconButton(
                onPressed: () {
                  setState(
                    () {
                      widget.obscureText != widget.obscureText;
                      if (widget.obscureText) {
                        widget.icon = Icon(
                          Icons.visibility_off,
                          color: Color.fromRGBO(137, 143, 156, 1),
                        );
                      } else {
                        widget.icon = Icon(
                          Icons.visibility,
                          color: Color.fromRGBO(137, 143, 156, 1),
                        );
                      }
                    },
                  );
                },
                icon: widget.icon!)
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFF0FF898F9C),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFF0FF898F9C),
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFF0FF898F9C),
            width: 1,
          ),
        ),
        filled: true,
        fillColor: Color.fromRGBO(214, 223, 241, 0.47),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Color.fromRGBO(137, 143, 156, 1),
        ),
      ),
      style: TextStyle(
        color: Color.fromRGBO(137, 143, 156, 1),
      ),
    );
  }
}
