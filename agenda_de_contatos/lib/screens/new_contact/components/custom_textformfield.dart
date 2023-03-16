import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final String? Function(String? value) validator;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.controller,
    required this.validator,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(widget.label),
          border: const OutlineInputBorder(),
        ),
        controller: widget.controller,
        validator: widget.validator,
      ),
    );
  }
}
