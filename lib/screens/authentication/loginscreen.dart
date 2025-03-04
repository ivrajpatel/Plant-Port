import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_port/bottombar.dart';
import 'package:plant_port/screens/authentication/registerscreen.dart' show RegisterScreen;
import 'package:shared_preferences/shared_preferences.dart';

import 'change_password.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);
      await prefs.setString('password', password);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Signed in successfully!")),
      );
     Get.offAll(BottomBar());
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: Plese Enter required details")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Enter your email to start shopping and get awesome deals today!",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 24),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email",
                  hintText: "rifqi.naufal@mail.com",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  labelText: "Password",
                  hintText: "**********",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChangePassword()),
                  );
                },
                child: Text("Forgot your password?",
                    style: TextStyle(color: Colors.green, fontSize: 16)),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  signInWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                },
                child: Container(
                  width: 343,
                  height: 43,
                  decoration: BoxDecoration(
                      color: Color(0xFF129C52),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                      child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 43,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF1A7F65)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Log In with Google",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF129C52)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 43,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF129C52)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Log In with Facebook",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF129C52)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text(
                        " Register",
                        style: TextStyle(
                            color: Color(0xFF129C52),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
