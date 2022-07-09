import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_1/ui/login/components/rectangular_text_field.dart';

import '../../presentation/login_presenter.dart';
import 'after_layout.dart';

class LoginScreen extends StatelessWidget  {
  static const String id = "/login";

  const LoginScreen({Key? key, required this.presenter}) : super(key: key);

  final LoginPresenter presenter;

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Crypto List App',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      ' ',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                    padding: const EdgeInsets.all(10),
                    child: RectangularTextField(
                      onTextChanged: presenter.onUserEmailUpdate,
                      hint: "Email",
                      obscureText: false,
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: RectangularTextField(
                      onTextChanged: presenter.onPasswordUpdate,
                      hint: "Senha",
                      obscureText: true,
                    )),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    ' ',
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Entrar'),
                      onPressed: presenter.onLoginButtonPressed,
                    )),
                Row(
                  children: <Widget>[
                    const Text('Não tem uma conta?'),
                    TextButton(
                      child: const Text(
                        'Registre-se',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: presenter.onRegisterLinkPressed,
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )),
      ),
    );
  }


}


