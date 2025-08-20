import 'package:flutter/material.dart';

import '../../../helpers/app_styles.dart';
class CustomField extends StatelessWidget {
  const CustomField({super.key, required this.hintText, this.validator, this.suffixIcon, this.obscureText = false});
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        // label: Text('Email'),
        hintText: hintText,
        hintStyle: AppStyles.font16CustomGreyW400,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xffDBE0E5),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
