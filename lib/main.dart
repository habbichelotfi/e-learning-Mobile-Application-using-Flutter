import 'package:flutter/material.dart';
import 'screens/courses_screen.dart';
import 'screens/home_screen.dart';
import 'screens/messages_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: const MainNavigationPage(),
    );
  }
}

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({Key? key}) : super(key: key);

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int index = 0;
  final List<bool> _stateB = [true, false, false, false, false];
  final List<Widget> _widgets = [
    const HomeScreen(),
    const Courses(),
    const Search(),
    const Messages(),
    const Profile()
  ];

  void _onItemTapped(int newIndex) {
    setState(() {
      for (int i = 0; i < _stateB.length; i++) {
        _stateB[i] = false;
      }
      _stateB[newIndex] = true;
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          _widgets.elementAt(index),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomerPainter(),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildNavItem(0, Icons.home),
                        _buildNavItem(1, Icons.album_rounded),
                        _buildNavItem(2, Icons.search),
                        _buildNavItem(3, Icons.message),
                        _buildNavItem(4, Icons.person),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildNavItem(int itemIndex, IconData icon) {
    final bool isActive = _stateB[itemIndex];
    return IconButton(
      onPressed: () => _onItemTapped(itemIndex),
      icon: Icon(
        icon,
        color: isActive ? Colors.blue.shade700 : Colors.grey,
        size: 35,
      ),
    );
  }
}

class BNBCustomerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.65, 0, size.width * 0.40, 20);
    path.quadraticBezierTo(size.width * 0.1, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.8, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
