import 'package:day_3/ui/screens/positioned_stack.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

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
                'Non Position Stack',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
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
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                    Container(
                    height: 250,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                    Container(
                    height: 200,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.lime[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PositionedStack() ));
          },
          child: const Icon(Icons.arrow_forward_ios),
          ),
      ),
    );
  }
}