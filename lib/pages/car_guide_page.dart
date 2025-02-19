import 'package:flutter/material.dart';

class CarGuidePage extends StatefulWidget {
  const CarGuidePage({super.key});

  @override
  State<CarGuidePage> createState() => _CarGuidePageState();
}

class _CarGuidePageState extends State<CarGuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,            color: Colors.red,
          )
        ],
      ),
    );
  }
}
