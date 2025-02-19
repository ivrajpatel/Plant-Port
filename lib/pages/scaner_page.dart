import 'package:flutter/material.dart';

class ScanerPage extends StatefulWidget {
  const ScanerPage({super.key});

  @override
  State<ScanerPage> createState() => _ScanerPageState();
}

class _ScanerPageState extends State<ScanerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
