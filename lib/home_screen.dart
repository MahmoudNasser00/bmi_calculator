import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'age_and_weight.dart';
import 'custom_app_bar.dart';
import 'gender_type.dart';
import 'heightCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double height = 170;
  int weight = 60;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GenderCard(
                      label: 'Male',
                      icon: Icons.male,
                      isSelected: isMale,
                      onTap: () {
                        setState(() => isMale = true);
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: GenderCard(
                      label: 'Female',
                      icon: Icons.female,
                      isSelected: !isMale,
                      onTap: () {
                        setState(() => isMale = false);
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: HeightCard(
                height: height,
                onChanged: (value) {
                  setState(() => height = value);
                },
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: NumberCard(
                      title: 'WEIGHT',
                      value: weight,
                      onIncrement: () {
                        setState(() => weight++);
                      },
                      onDecrement: () {
                        setState(() {
                          if (weight > 1) weight--;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: NumberCard(
                      title: 'AGE',
                      value: age,
                      onIncrement: () {
                        setState(() => age++);
                      },
                      onDecrement: () {
                        setState(() {
                          if (age > 1) age--;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  final bmi = weight / ((height / 100) * (height / 100));

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ResultScreen(bmi: bmi)),
                  );
                },

                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: const Color(0xFFEB1555),
                ),
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
