import 'package:flutter/material.dart';

import 'contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactScreen(HintText: 'Enter Your Name Here', SuffixIcon:Icons.drive_file_rename_outline_outlined,
        HintText_p: 'Enter Your Number Here', SuffixIcon_p: Icons.phone,),
    );
  }
}
