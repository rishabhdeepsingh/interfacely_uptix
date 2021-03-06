// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:interfacely/l10n/l10n.dart';
import 'package:interfacely/uptix/constants.dart';
import 'package:interfacely/uptix/view/uptix.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Roobert",
        accentColor: const Color(0xFF13B9FF),
        primaryColor: const Color(0xFFFAFF00),
        backgroundColor: const Color(0xFF232323),
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Text_Color),
          labelStyle: TextStyle(color: Text_Color),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const Center(child: Uptix()),
    );
  }
}
