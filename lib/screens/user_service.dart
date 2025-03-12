import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> loadUserDetails(Function(String, String) updateUI) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? email = prefs.getString('email');
    String? firstname = prefs.getString('firstname');

    if (email != null && firstname != null) {
      updateUI(email, firstname);
    } else {
      User? user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot userDoc =
            await _firestore.collection('users').doc(user.uid).get();
        if (userDoc.exists) {
          String fetchedName = userDoc['name'] ?? "User";
          String fetchedEmail = userDoc['email'] ?? "No Email";
          await prefs.setString('email', fetchedEmail);
          await prefs.setString('firstname', fetchedName);
          updateUI(fetchedEmail, fetchedName);
        }
      }
    }
  }
}
