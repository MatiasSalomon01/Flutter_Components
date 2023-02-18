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
              CustomInputField(hintText: 'Nombre del Usuario', labelText: 'Nombre'),
              SizedBox(height: 30,),

              CustomInputField(hintText: 'Apellido del Usuario', labelText: 'Apellido'),
              SizedBox(height: 30,),

              CustomInputField(hintText: 'Correo del Usuario', labelText: 'Correo', keyboardType: TextInputType.emailAddress),
              SizedBox(height: 30,),

              CustomInputField(hintText: 'Contraseña del Usuario', labelText: 'Contraseña', obscureText: true,),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}