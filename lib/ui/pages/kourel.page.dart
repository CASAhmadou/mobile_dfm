import 'package:flutter/material.dart';

class KourelPage extends StatelessWidget{
  KourelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kourel Page'),
      ),
      body: Center(
        child: Text('Bonjour DAAHIRA FOULKOUL MASHOUN'),
      ),
    );
    throw UnimplementedError();
  }

}