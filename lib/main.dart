import 'package:counter_provider/counterprovider.dart';
import 'package:counter_provider/firstpage.dart';
import 'package:counter_provider/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>CounterProvider (),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
      home: FirstPage(),
        ),
    );
    
  }
}
      