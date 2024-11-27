import 'package:flutter/material.dart';
import 'package:rentease/core/theme/theme_imports.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final int? maxLines;
  final bool readOnly;

  const AppTextField({
    required this.label,
    super.key,
    this.hint,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.maxLines,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      maxLines: maxLines,
      style: const TextStyle(fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        filled: true,
        fillColor: AppColors.textFieldBackground,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
