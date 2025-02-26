import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_port/bottombar.dart';
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferences;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();

  Future<void> authenticateUser({
    required String email,
    required String password,
    required String firstname,
    required String lastname,
  }) async {
    try {
      if (firstname.isEmpty || lastname.isEmpty) {
        _showErrorDialog('Please enter both First Name and Last Name');
        return;
      }

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);
      await prefs.setString('password', password);

      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Account created successfully!")),
      );
      Get.offAll(BottomBar());
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Future<void> createUserWithEmailAndPassword({
  //   required String email,
  //   required String password,
  // }) async {
  //   try {
  //     await _firebaseAuth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text("Account created successfully!")),
  //     );
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text("Error: $e")),
  //     );
  //   }
  // }
  //
  //
  // Future<void> _login() async {
  //   final String firstname = _firstnameController.text;
  //   final String lastname = _lastnameController.text;
  //
  //   if (!firstname.isNotEmpty || !lastname.isNotEmpty) {
  //     _showErrorDialog('Please enter both ID and Password');
  //   } else {
  //     final SharedPreferences prefs = await SharedPreferences.getInstance();
  //     await prefs.setString('firstname', firstname);
  //     await prefs.setString('lastname', lastname);
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => BottomBar()),
  //     );
  //   }
  // }
  //
  // void _showErrorDialog(String message) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Error'),
  //         content: Text(message),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: Text('OK'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 50, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
              Text(
                "Fill in your details below to get started on a\nseamless shopping experience.",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _firstnameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  prefixIcon: Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _lastnameController,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  prefixIcon: Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  alignLabelWithHint: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                // keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                obscureText: passwordVisible,
              ),
              SizedBox(
                height: 24,
              ),
              RichText(
                text: TextSpan(
                  text:
                      'By clicking Create Account, you acknowledge you have read and agreed to our  ',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF129C52))),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF129C52))),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () => authenticateUser(
                    email: emailController.text,
                    password: passwordController.text,
                    firstname: _firstnameController.text,
                    lastname: _lastnameController.text),
                // onTap: () {
                //
                //   createUserWithEmailAndPassword(
                //     email: emailController.text,
                //     password: passwordController.text,
                //   );
                // },
                child: Container(
                  height: 43,
                  decoration: BoxDecoration(
                      color: Color(0xFF129C52),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text('OR'),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
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
                    // Image(
                    //   image: AssetImage("assets/google1.png"),
                    //   height: 16,
                    //   width: 16,
                    // ),
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
                    // Image(
                    //   image: AssetImage("assets/facebook.png"),
                    //   height: 16,
                    //   width: 16,
                    // ),
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
            ],
          ),
        ),
      ),
    );
  }
}
