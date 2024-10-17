import 'package:flutter/material.dart';
import 'package:mobile_dfm/ui/pages/auth/login.page.dart';
import 'package:mobile_dfm/ui/pages/home.page.dart';
import 'package:mobile_dfm/ui/pages/kourel.page.dart';
import 'package:mobile_dfm/ui/pages/pole.page.dart';

import 'ui/pages/membre.page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dahira Foulkoul Mash Oun',
      routes: {
        "/":(context)=>HomePage(),
        "/login":(context)=>LoginPage(),
        "/membres":(context)=>MembrePage(),
        "/poles":(context)=>PolePage(),
        "/kourels":(context)=>KourelPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      initialRoute: "/login",
    );
  }
}
