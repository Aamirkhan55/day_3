import 'package:flutter/material.dart';

class PositionedStack extends StatelessWidget {
  const PositionedStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'STACK',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Text(
                'Position Stack',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                    Positioned(
                      left: 12,
                      top: 16,
                      child: Container(
                      height: 250,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.amber[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                       ),
                    ),
                    Positioned(
                      top: 60,
                      right: 50,
                      bottom: 60,
                      left: 50,
                      child: Container(
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}