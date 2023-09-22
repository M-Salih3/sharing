// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firebase Counter',
//       home: CounterPage(),
//     );
//   }
// }

// class CounterPage extends StatefulWidget {
//   @override
//   _CounterPageState createState() => _CounterPageState();
// }

// class _CounterPageState extends State<CounterPage> {
//   int count = 0;

//   // Initialize Firebase Firestore
//   final FirebaseFirestore firestore = FirebaseFirestore.instance;

//   // Reference to the 'count' variable in Firebase
//   final DocumentReference countRef = FirebaseFirestore.instance.collection('totalstudents').doc('totalPresent');

//   @override
//   void initState() {
//     super.initState();
//     getTotalPresent();
//   }

//   // To get the 'totalPresent' value
// Future<int> getTotalPresent() async {
//   DocumentSnapshot snapshot = await FirebaseFirestore.instance
//       .collection('totalstudents') // Your collection name
//       .doc('sGJK0HoQN8tOAV5YYAqn') // Your document ID
//       .get();

//   if (snapshot.exists) {
//     return snapshot.data()['totalPresent'] ?? 0;
//   } else {
//     return 0; // Default value if document doesn't exist
//   }
// }

//   // Increment the count and update Firebase
//   void incrementCount() {
//     setState(() {
//       count++;
//     });
//     getTotalPresent(count);
//   }

//   // Decrement the count and update Firebase
//   void decrementCount() {
//     setState(() {
//       count--;
//     });
//     getTotalPresent(count);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Firebase Counter'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Count: $count',
//               style: TextStyle(fontSize: 24),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 FloatingActionButton(
//                   onPressed: incrementCount,
//                   child: Icon(Icons.add),
//                 ),
//                 SizedBox(width: 20),
//                 FloatingActionButton(
//                   onPressed: decrementCount,
//                   child: Icon(Icons.remove),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
