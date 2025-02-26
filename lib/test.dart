import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BottomSheetExample(),
  ));
}

class BottomSheetExample extends StatelessWidget {
  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return CustomBottomSheetContent();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Bottom Sheet")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showCustomBottomSheet(context),
          child: Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}

class CustomBottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 400, // Adjust height as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Close Button & Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 32), // Placeholder to balance close button
              Text(
                "Snap Tips",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),

          SizedBox(height: 10),

          // Images with Icons
          Column(
            children: [
              _buildTipCard("assets/wrong_placement.png", false), // Wrong Image
              SizedBox(height: 10),
              _buildTipCard(
                  "assets/correct_placement.png", true), // Correct Image
            ],
          ),

          SizedBox(height: 15),

          // Instruction Text
          Text(
            "Place your plant in the center",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            "Place your plant in the center of the frame to make the identification more accurate",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),

          SizedBox(height: 15),

          // Dots Indicator & Next Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    width: index == 0 ? 10 : 6,
                    height: index == 0 ? 10 : 6,
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.green : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text("Next"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper function to create tip cards
  Widget _buildTipCard(String imagePath, bool isCorrect) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Image.asset(imagePath, width: 250, height: 100, fit: BoxFit.cover),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              isCorrect ? Icons.check_circle : Icons.cancel,
              color: isCorrect ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
