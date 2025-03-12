import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_port/screens/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'authentication/change_password.dart';
import 'authentication/loginscreen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  // String? _userId;
  // String? name;

  // @override
  // void initState() {
  //   super.initState();
  //   _loadUserDetails();
  // }

  String _userId = "Loading...";
  String name = "Loading...";

  @override
  void initState() {
    super.initState();
    UserService().loadUserDetails((email, firstname) {
      setState(() {
        _userId = email;
        name = firstname;
      });
    });
  }

  final TextEditingController emailController = TextEditingController();
  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
    await prefs.remove('password');
    await prefs.remove('firstname');

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF129C52),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image(image: AssetImage("assets/images/setting.png")),
            SizedBox(
              height: 20,
            ),
            Container(
              // width: 356,
              height: 650,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ProfileTile(
                    title: "Email",
                    value: '$_userId',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmailScreen()),
                      );
                    },
                  ),
                  ProfileTile(
                    title: "Username",
                    value: "$name",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UsernameScreen()),
                      );
                    },
                  ),
                  ProfileTile(
                    title: "Full Name",
                    value: "Muhammad Yasir",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullNameScreen()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileTile(
                    title: "Notification",
                    value: "",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullNameScreen()),
                      );
                    },
                  ),
                  ProfileTile(
                    title: "Share app",
                    value: "",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullNameScreen()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileTile(
                    title: "Rate Us",
                    value: "",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullNameScreen()),
                      );
                    },
                  ),
                  ProfileTile(
                    title: "Privacy policy",
                    value: "",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullNameScreen()),
                      );
                    },
                  ),
                  ProfileTile(
                    title: "Terms of use",
                    value: "",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullNameScreen()),
                      );
                    },
                  ),
                  ProfileTile(
                    title: "Contact us",
                    value: "",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullNameScreen()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileTile(
                    title: "Change password",
                    value: "",
                    onTap: () {
                      Get.to(ChangePassword());
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            ElevatedButton(
                onPressed: logout,
                child: Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "Log Out",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  )),
                )),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onTap;

  const ProfileTile(
      {required this.title, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          tileColor: Colors.grey.shade50,
          title: Row(
            children: [
              Text(title,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Spacer(),
              Text(value, style: TextStyle(color: Colors.green)),
            ],
          ),
          // subtitle:Text(value, style: TextStyle(color: Colors.green)),
          trailing:
              Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
          // contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),
    );
  }
}

// Screens for each item

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Email Details")),
      body: Center(child: Text("This is the Email Screen")),
    );
  }
}

class UsernameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Username Details")),
      body: Center(child: Text("This is the Username Screen")),
    );
  }
}

class FullNameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Full Name Details")),
      body: Center(child: Text("This is the Full Name Screen")),
    );
  }
}
