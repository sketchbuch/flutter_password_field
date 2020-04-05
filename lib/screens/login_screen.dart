import 'package:flutter_password_field/constants/layout.dart';
import 'package:flutter_password_field/l10n/login/localizations.dart';
import 'package:flutter_password_field/models/login_data.dart';
import 'package:flutter_password_field/widgets/forms/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fromData = LoginData();

  void onSubmit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print('login ok!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    LoginLocalizations loginLocalizations = LoginLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(loginLocalizations.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: insetNormal,
          child: LoginForm(),
        ),
      ),
    );
  }
}
