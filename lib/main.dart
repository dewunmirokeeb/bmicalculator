import 'package:bmicalculator/result.dart';
import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      initialRoute: 'first_page',
      routes: {
        'first_page': (context) => const InputPage(),
        'result_page': (context) =>  Result(bmi,getResult,getInterpretation),
      },
    );
  }
}
