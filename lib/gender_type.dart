import 'package:flutter/material.dart';

class GenderType extends StatefulWidget {
  final dynamic genderType;

  final dynamic icon;

  const GenderType({Key? key, required this.genderType, required this.icon})
    : super(key: key);

  @override
  _GenderTypeState createState() => _GenderTypeState();
}

class _GenderTypeState extends State<GenderType> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(51, 50, 68, 1),
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .center,
            mainAxisSize: .min,
            children: [
              Icon(
                widget.icon,
                size: 96,
                color: Color.fromRGBO(255, 255, 255, 1.0),
              ),
              Text(
                widget.genderType,
                style: TextStyle(color: Color.fromRGBO(139, 140, 158, 1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
