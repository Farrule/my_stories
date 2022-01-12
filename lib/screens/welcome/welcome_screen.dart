import 'package:flutter/material.dart';
import 'package:my_stories/screens/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Container(
                      child: Text('My Stories',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink[400],
                          ))),
                  Spacer(),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: const Text('Start my stories',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen())),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          backgroundColor: Colors.pink[400],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
