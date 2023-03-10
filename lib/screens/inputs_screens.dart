import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Matias',
      'last_name' : 'Salomon',
      'email'     : 'matias@gmail.com',
      'password'  : '123456789',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(height: 30,),
          
                CustomInputField(hintText: 'Nombre del Usuario', labelText: 'Nombre', formProperty: 'first_name', formValues: formValues),
                const SizedBox(height: 30,),
          
                CustomInputField(hintText: 'Apellido del Usuario', labelText: 'Apellido', formProperty: 'last_name', formValues: formValues),
                const SizedBox(height: 30,),
          
                CustomInputField(hintText: 'Correo del Usuario', labelText: 'Correo', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                const SizedBox(height: 30,),
          
                CustomInputField(hintText: 'Contraseña del Usuario', labelText: 'Contraseña', obscureText: true, formProperty: 'password', formValues: formValues),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser',child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer',child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer',child: Text('Jr. Developer')),
                  ], 
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
          
                ElevatedButton(
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode()); //Ocultar el teclado

                    if (!myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                    )
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}