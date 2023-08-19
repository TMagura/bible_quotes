import 'package:flutter/material.dart';
import 'package:my_marriage_rules/awesomeQuotes.dart';
import 'package:my_marriage_rules/favourates.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/':(context) => QuoteList(),
    '/favourates':(context)=>Favourates()
  },
));

