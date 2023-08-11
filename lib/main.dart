import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http_flutter/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(Theme.of(context).textTheme), // Set JetBrains Mono as default font
      ),
      home: const Profile(),
    );
  }
} 

