import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Color(0xFF129C52),
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SectionTitle(title: 'Today'),
            NotificationCard(
              image: 'assets/images/mildmint.png',
              title: 'Mild Mint',
              message: 'Water Today!',
              icon: Icons.water_drop,
              iconColor: Colors.blue,
              backgroundColor: Colors.green.shade50,
              isUnread: false,
            ),
            NotificationCard(
              image: 'assets/images/mildmint.png',
              title: 'Mild Mint',
              message: 'Fertilizer Today!',
              icon: Icons.emoji_nature,
              iconColor: Colors.orange,
              backgroundColor: Colors.green.shade50,
              isUnread: true,
            ),
            SectionTitle(title: 'Yesterday'),
            NotificationCard(
              image: 'assets/images/mildmint.png',
              title: 'Mild Mint',
              message: 'Water Today!',
              icon: Icons.water_drop,
              iconColor: Colors.blue,
              backgroundColor: Colors.white,
              isUnread: false,
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String message;
  final String image;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final bool isUnread;

  NotificationCard({
    required this.title,
    required this.image,
    required this.message,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.isUnread,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Stack(children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage:
                AssetImage(image),
          ),
          title: Row(
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

            ],
          ),
          subtitle: Row(
            children: [
              Icon(icon, color: iconColor, size: 18),
              SizedBox(width: 5),
              Text(message),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios,size: 20,),
        ),
        if (isUnread)
          Positioned(
            top: 00,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Icon(Icons.circle, color: Colors.green, size: 10),
            ),
          ),
      ]),
    );
  }
}
