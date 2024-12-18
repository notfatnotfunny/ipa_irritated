import 'package:flutter/material.dart';
import 'dart:math';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Coming Soon',
              style: TextStyle(
                color: _color,
                fontSize: 30,
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  final random = Random();

                  _width = random.nextInt(300).toDouble();
                  _height = random.nextInt(300).toDouble();

                  _color = Color.fromRGBO(
                    random.nextInt(256),
                    random.nextInt(256),
                    random.nextInt(256),
                    1,
                  );

                  _borderRadius =
                      BorderRadius.circular(random.nextInt(100).toDouble());
                });
              },
              child: AnimatedContainer(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: _borderRadius,
                ),
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              ),
            ),
            /*IconButton(
              onPressed: () {
                setState(() {
                  final random = Random();

                  _width = random.nextInt(300).toDouble();
                  _height = random.nextInt(300).toDouble();

                  _color = Color.fromRGBO(
                    random.nextInt(256),
                    random.nextInt(256),
                    random.nextInt(256),
                    1,
                  );

                  _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
                });
              },
              icon: const Icon(Icons.play_arrow),
            )*/
          ],
        ),
      ),
    );
  }
}
