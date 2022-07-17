import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Color backgroundColor = Colors.white;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget colorItem(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          backgroundColor = color;
        });
      },
      child: CircleAvatar(
        backgroundColor: color,
        radius: 30.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              color: Colors.black38,
            ),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(40.0),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    colorItem(Colors.red),
                    colorItem(Colors.orange),
                    colorItem(Colors.green),
                    colorItem(Colors.yellow),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    colorItem(Colors.blue),
                    colorItem(Colors.cyan),
                    colorItem(Colors.purple),
                    colorItem(Colors.black),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: colorItem(Colors.white),
      ),
    );
  }
}
