import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
               CustomInputField(hintText: 'Nombre del Usuario', helperText: 'Solo 3 letras', labelText: 'Nombre', icon: Icons.assignment_ind_outlined,suffixIcon: Icons.group_outlined),
            ],
          ),
        ),
      ),
    );
  }
}