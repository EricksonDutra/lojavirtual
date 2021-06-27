import 'package:flutter/material.dart';
import 'package:lojaonline/screens/home_screen.dart';

main() =>runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter's Clothing",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 4, 125, 141)
      ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
    );
  }
}
