import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Portfolio'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Container(
        color: Colors.pink.shade50,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      color: Colors.white,
                    ),
                    child: Stack(children: [
                      Center(
                          child: Image.asset(
                        'assets/flutter.png',
                        width: 250,
                        height: 250,
                      ))
                    ])),
              ),
              Text(
                'Dash',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 24,
                ),
              ),
              Text(
                'BS Computer Engineering 4B',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
