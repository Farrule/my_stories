import 'package:flutter/material.dart';
import 'package:my_stories/main.dart';
import 'package:provider/provider.dart';
import 'package:my_stories/repository/auth_repository.dart';
import 'package:my_stories/components/widgets/sign_in.dart';
import 'package:my_stories/components/widgets/sign_in_model.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignInModel(
        AuthRepository(),
      ),
      child: SignIn(),
    );
  }
}
