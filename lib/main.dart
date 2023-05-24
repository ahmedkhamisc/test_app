import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Test app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random rnd = Random();
  late Color rndColor;

  @override
  void initState() {
    rndColor = const Color(0xffffffff);
    super.initState();
  }

  Color getRandomColor() => Color(rnd.nextInt(0xffffffff));

  void generateRandomColor(){
    setState(() {
      rndColor=getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rndColor,
        title: Text(widget.title),
      ),
      body: InkWell(
        onTap: generateRandomColor,
        child: Container(
          color: rndColor,
          child: const Center(
            child: Text(
              'Hello there',
            ),
          ),
        ),
      ),
    );
  }
}
