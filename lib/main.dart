import 'package:flutter/material.dart';
import 'package:vmd/utils/res.dart';
import 'feature/disclaimer/presentation/ui/disclaimer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DisclaimerScreen(),
    );
  }
}
