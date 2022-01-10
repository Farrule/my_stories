import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  InputForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;
  late String _username;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Your username',
              hintText: 'Enter your uesrname',
            ),
            validator: (value) {},
          )
        ],
    ));
  }
}
