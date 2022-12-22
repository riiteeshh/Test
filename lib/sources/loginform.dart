import 'package:assinment/sources/clickabletext.dart';
import 'package:flutter/material.dart';
import '../misc/validator.dart';
import '../misc/formdecoration.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final mail = TextEditingController();
  final pass = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formGlobalKey,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 28, left: 12, right: 12),
            child: TextFormField(
                controller: mail,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textInputAction: TextInputAction.next,
                validator: (value) => emailvalidator(value),
                decoration: formdecoration(
                    hint: 'johnmayor@gmail.com',
                    label: 'E-mail address*',
                    suffix: Icons.people_rounded)),
          ),
          Container(
            margin: EdgeInsets.only(top: 18, left: 12, right: 12),
            child: TextFormField(
                controller: pass,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                obscureText: true,
                textInputAction: TextInputAction.done,
                validator: (value) => passwordvalidator(value),

                // onEditingComplete: () => {},
                decoration: formdecoration(
                    hint: '********',
                    label: 'Password*',
                    suffix: Icons.password)),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 14, left: 28, bottom: 10),
            child: ClickableText(
              text: 'Forget Password?',
              color: Colors.red,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 20, right: 20),
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 159, 14, 4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14))),
              onPressed: () {
                if (formGlobalKey.currentState!.validate()) {
                  print('mail' + mail.text + '\npassword' + pass.text);
                  Navigator.pushReplacementNamed(context, '/homepage');
                }
              },
              child: Text('Login',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
