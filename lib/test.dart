// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// import '../screens/setting_screen.dart';
//
// class MypantsPage extends StatefulWidget {
//   const MypantsPage({super.key});
//
//   @override
//   State<MypantsPage> createState() => _MypantsPageState();
// }
//
// class _MypantsPageState extends State<MypantsPage> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   // Method to fetch users from Firestore
//   Stream<List<Map<String, dynamic>>> getUsers() {
//     return _firestore.collection('users').snapshots().map((snapshot) {
//       return snapshot.docs
//           .map((doc) => doc.data() as Map<String, dynamic>)
//           .toList();
//     });
//   }
//
//   // Method to delete user
//   Future<void> deleteUserFromDataBase(String userId) async {
//     await _firestore.collection('users').doc(userId).delete();
//   }
//
//   Future<void> deleteUser(BuildContext context) async {
//     User? user = _auth.currentUser;
//
//     if (user != null) {
//       try {
//         await user.delete();
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('User account deleted successfully')),
//         );
//       } catch (e) {
//         if (e.toString().contains('requires-recent-login')) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//                 content: Text('Re-authentication required before deletion')),
//           );
//           // Here, you should redirect the user to the re-authentication process
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Error deleting user: $e')),
//           );
//         }
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('No user is signed in')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Color(0xFF129C52),
//         title: Text("My Plants",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold)),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Get.to(SettingScreen());
//               },
//               icon: Icon(
//                 Icons.settings_outlined,
//                 color: Colors.white,
//               ))
//         ],
//       ),
//       body: StreamBuilder<List<Map<String, dynamic>>>(
//         stream: getUsers(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No users found'));
//           }
//
//           var users = snapshot.data!;
//           return ListView.builder(
//             itemCount: users.length,
//             itemBuilder: (context, index) {
//               var user = users[index];
//               String userId =
//               user['uid']; // Assuming 'id' is the user's identifier
//               String userName = user[
//               'firstname']; // Assuming 'name' is a field in your Firestore document
//
//               return ListTile(
//                 title: Text(userName),
//                 trailing: IconButton(
//                   icon: Icon(Icons.delete),
//                   onPressed: () {
//                     _showDeleteDialog(context, userId, userName);
//                   },
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
//
//   // Method to show delete confirmation dialog
//   void _showDeleteDialog(BuildContext context, String userId, String userName) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Delete User'),
//           content: Text('Are you sure you want to delete $userName?'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () async {
//                 await deleteUser(context).then((val) {
//                   deleteUserFromDataBase(userId);
//                   Navigator.of(context).pop();
//                 });
//                 // await deleteUser(userId);
//               },
//               child: Text('Delete'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
