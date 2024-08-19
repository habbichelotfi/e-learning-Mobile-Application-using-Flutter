// ignore: file_names
import 'package:e_learning/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MySpashScreen());
}

class MySpashScreen extends StatelessWidget {
  const MySpashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool animated = false;
  late AnimationController _controller;

  @override
  void initState() {
    AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    ).forward().then((value) => setState(() {
          print('ads');
          animated = true;
        }));
  }

  @override
  Widget build(BuildContext context) {
    void endcallback() {
      Navigator.push(context, MaterialPageRoute(builder: (builder) => const MyApp()));
    }

    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/video-tutorials.png',
                width: 160,
                height: 160,
              ),
              AnimatedDefaultTextStyle(
                child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Learn Code Overcome',
                    )),
                style: animated
                    ? const TextStyle(fontSize: 40)
                    : const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                duration: const Duration(milliseconds: 2000),
                onEnd: endcallback,
              )
            ],
          ),
        ));
  }
}
