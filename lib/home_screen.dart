import 'package:bmi_calculator/gender_type.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 38, 59, 1),
      appBar: AppBar(
        shadowColor: Color.fromRGBO(0, 0, 0, 1.0),
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(255, 255, 255, 1),
          fontWeight: FontWeight.bold,
        ),
        elevation: 1,
        backgroundColor: Color.fromRGBO(36, 38, 59, 1),
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: GenderType(genderType: 'genderType', icon: Icons.male),
    );
  }
}
