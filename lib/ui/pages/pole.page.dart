import 'package:flutter/material.dart';

class PolePage extends StatelessWidget{
  PolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pole Page'),
      ),
      body: Center(
        child: Text('Bonjour DAAHIRA FOULKOUL MASHOUN'),
      ),
    );
    throw UnimplementedError();
  }
}