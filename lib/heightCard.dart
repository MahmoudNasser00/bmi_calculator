import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  final double height;
  final ValueChanged<double> onChanged;

  const HeightCard({required this.height, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF1D1E33),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(fontSize: 14, letterSpacing: 1.3),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toInt().toString(),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(width: 4),
              const Text('cm'),
            ],
          ),
          Slider(value: height, min: 100, max: 220, onChanged: onChanged),
        ],
      ),
    );
  }
}
