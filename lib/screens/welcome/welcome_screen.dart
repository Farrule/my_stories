import 'package:flutter/material.dart';
import 'package:my_stories/screens/home.dart';
import 'package:my_stories/components/widgets/sign_in.dart';
import 'package:my_stories/screens/welcome/sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image:
                  AssetImage('lib/components/assets/images/welcome_pink.jpg'),
              fit: BoxFit.cover,
            )),
          ),
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
                                builder: (context) => SignInScreen())),
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
