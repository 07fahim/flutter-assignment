import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
          centerTitle: true,
          backgroundColor: Colors.red,
          toolbarHeight: 60,
        ),
      ),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  TextStyle textStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Need Blood"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade600,
                radius: 95,
                child: const Icon(
                  Icons.bloodtype_outlined,
                  size: 100,
                  color: Colors.redAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Donate Blood",
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
