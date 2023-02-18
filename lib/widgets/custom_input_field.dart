import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText; 
  final String? labelText; 
  final String? helperText; 
  final IconData? suffixIcon; 
  final IconData? icon; 

  const CustomInputField({
    super.key, this.hintText, this.labelText, this.helperText, this.suffixIcon, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        //print(value);
      },
      validator: (value) {
        if (value == null) return 'Este Campo es Requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon)
        // suffixIcon: Icon(Icons.group_outlined),
        // icon: Icon(Icons.assignment_ind_outlined),
      ),
    );
  }
}