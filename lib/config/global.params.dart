import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String, dynamic>> menus =[
    {"title": "Membres", "icon":Icon(Icons.man, color: Colors.deepPurple), "route": "/membres"},
    {"title": "Poles", "icon":Icon(Icons.home, color: Colors.deepPurple), "route": "/poles"},
    {"title": "Kourels", "icon":Icon(Icons.man, color: Colors.deepPurple), "route": "kourels"}
  ];
}