import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool required;
  final bool obscureText;
  final Widget? suffixIcon;
  final Color? color;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  const TextFieldWidget(
      {super.key,
      this.focusNode,
      this.controller,
      this.label,
      this.validator,
      this.onFieldSubmitted,
      this.suffixIcon,
      this.color,
      this.obscureText = false,
      this.required = false});

  @override
  Widget build(BuildContext context) {
    InputBorder? inputBorder = OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: color ?? Colors.white, width: 1),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Container(
              margin: const EdgeInsets.only(bottom: 6),
              child: Text(
                label ?? '',
                style: TextStyle(color: color ?? Colors.white),
              )),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          focusNode: focusNode,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator ??
              (value) {
                if (value == '' && required) {
                  return 'The ${(label ?? 'input').toLowerCase()} field is required.';
                }
                return null;
              },
          style: TextStyle(
              color: color ?? Colors.white, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              isDense: true,
              suffixIcon: suffixIcon,
              // border: const OutlineInputBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              //   borderSide: BorderSide(color: Colors.white, width: 1),
              // ),
              focusedBorder: inputBorder,
              errorBorder: inputBorder,
              focusedErrorBorder: inputBorder,
              enabledBorder: inputBorder),
        ),
      ],
    );
  }
}
