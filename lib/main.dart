import 'package:flutter_password_field/l10n/core/localizations.dart';
import 'package:flutter_password_field/l10n/login/localizations.dart';
import 'package:flutter_password_field/screens/login_screen.dart';
import 'package:flutter_password_field/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() => runApp(Root());

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        // App Translations:
        CoreLocalizations.delegate,
        LoginLocalizations.delegate,
      ],
      home: LoginScreen(),
      onGenerateTitle: (context) => CoreLocalizations.of(context).appTitle,
      theme: appTheme,
      supportedLocales: [
        const Locale('en'),
      ],
    );
  }
}
