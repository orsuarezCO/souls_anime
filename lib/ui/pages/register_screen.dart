// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_new, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:souls_anime/domain/controller/login_controller.dart';
import 'package:souls_anime/providers/login_form_provider.dart';
import 'package:souls_anime/use_interfaces/input_decorations.dart';
import 'package:souls_anime/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            // Me permite hacer scroll si los hijos sobrepasan el tamaño
            child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 175),
          CardContainer(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text('Crear cuenta',
                    style: Theme.of(context).textTheme.headline4),
                SizedBox(height: 30),
                ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(),
                  child: _LoginFormulario(),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Get.back();
            }, //Navigator.pushReplacementNamed(context, 'login'),
            style:
                ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),
            child: Text(
              '¿Ya tienes una cuenta?',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    )));
  }
}

class _LoginFormulario extends StatelessWidget {
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: loginForm.formKey,
        // ignore: todo
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              controller: this.controllerEmail,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'cesarbadill8@gmail.com',
                  labelText: 'Correo electrónico',
                  prefixIcon: Icons.alternate_email_rounded),
              onChanged: (value) => loginForm.email = value,
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = new RegExp(pattern);

                //ternario: toma la expresion regular y verifica que hace match el valor
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es válido';
              },
            ),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: '',
                  labelText: 'Nombre de Usuario',
                  prefixIcon: Icons.supervisor_account),
              onChanged: (value) => loginForm.account = value,
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: this.controllerPassword,
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: '***********',
                  labelText: 'Contraseña',
                  prefixIcon: Icons.lock_outline),
              onChanged: (value) => loginForm.password = value,
              validator: (value) {
                return (value != null && value.length >= 6)
                    ? null
                    : 'La contraseña debe tener 6 caracteres';
              },
            ),
            SizedBox(height: 30),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.cyanAccent.shade100,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    child: Text(
                      'Ingresar',
                      style: TextStyle(color: Colors.white),
                    )),
                onPressed: () async {
                  LoginController loginController = Get.find();
                  await loginController.signUp(
                      controllerEmail.text, controllerPassword.text);
                  // if (!loginForm.isValidForm())
                  //   Navigator.pushReplacementNamed(context, 'home');
                }),
          ],
        ),
      ),
    );
  }
}
