import 'package:flutter/material.dart';

class MypantsPage extends StatefulWidget {
  const MypantsPage({super.key});

  @override
  State<MypantsPage> createState() => _MypantsPageState();
}

class _MypantsPageState extends State<MypantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.pinkAccent,
          )
        ],
      ),
    );
  }
}
