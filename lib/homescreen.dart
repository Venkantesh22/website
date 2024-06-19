// import 'package:flutter/material.dart';
// import 'bookdemo.dart'; // Import the new file

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Samay One-Solution',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => HomePage(),
//         '/features': (context) => FeaturesPage(),
//         '/contact': (context) => ContactPage(),
//         '/about': (context) => AboutPage(),
//         '/bookdemo': (context) => Home(), // Add the route for Book Demo
//       },
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFD9EAD3),
//       appBar: AppBar(
//         backgroundColor: Color(0xFF184D27),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Image.network(
//               'https://s3-alpha-sig.figma.com/img/4dfd/16d0/80fbc8f9a3f6ce73896cf8fb559cc1c4?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YsF40CcxvTi86pErIq9gAJ9AdlkfwvQZVepsMzDGFg9fRmb1S~he9EdhiL4YU2ZOQj1qvaiJnrt8FADAxRRM5oDpRmrAZTeIaMOja00GCS1gYPbE~RTxcJ3Di7eyjnYGON2z7Yv7K11RvAuKbZ0imhjKjNhGThtz3FWmI7ED-Sjo3NnCMtfmzndp5ek-j6pgjEfwZpcNIONm1yJVMyAyTZ4qBnDq8BclrD7cftCEimAuUzXV~udjRuVspp08Ff5tuNpXXEZpi1TFp~fVSBlcH90s6~gD2rBbZBhlc2jzuSRS5wIVAVknNO1ggjE199JbjULQjRUBuZwoajYZOdkoSg__',
//               height: 40,
//             ), // Your logo URL here
//             Row(
//               children: [
//                 NavBarItem('HOME', '/'),
//                 SizedBox(width: 20),
//                 NavBarItem('FEATURES', '/features'),
//                 SizedBox(width: 20),
//                 NavBarItem('CONTACT US', '/contact'),
//                 SizedBox(width: 20),
//                 NavBarItem('ABOUT US', '/about'),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/bookdemo'); // Navigate to the Book Demo page
//                   },
//                   style: ElevatedButton.styleFrom(
//                     foregroundColor: Colors.green[900], backgroundColor: Colors.greenAccent, // foreground color
//                   ),
//                   child: Text('Book Demo'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 80),
//             Text(
//               'SAMAY\nONE-SOLUTION',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 64,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w700,
//                 height: 0,
//                 letterSpacing: -1.28,
//               ),
//             ),
//             SizedBox(height: 80),
//             Text(
//               'ALL-IN-ONE Book different\nAppointments at one place.',
//               style: TextStyle(
//                 color: Color(0xFF224F34),
//                 fontSize: 50,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w700,
//                 height: 0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class NavBarItem extends StatelessWidget {
//   final String text;
//   final String route;

//   NavBarItem(this.text, this.route);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.pushNamed(context, route);
//       },
//       child: Text(
//         text,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 16,
//         ),
//       ),
//     );
//   }
// }

// class FeaturesPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Features'),
//       ),
//       body: Center(
//         child: Text('Features Page'),
//       ),
//     );
//   }
// }

// class ContactPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contact Us'),
//       ),
//       body: Center(
//         child: Text('Contact Us Page'),
//       ),
//     );
//   }
// }

// class AboutPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('About Us'),
//       ),
//       body: Center(
//         child: Text('About Us Page'),
//       ),
//     );
//   }
// }

// class BookDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Book Demo'),
//       ),
//       body: Center(
//         child: Text('Book Demo Page'),
//       ),
//     );
//   }
// }
