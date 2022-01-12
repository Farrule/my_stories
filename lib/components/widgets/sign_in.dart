import 'package:flutter/material.dart';
import 'package:my_stories/components/widgets/sign_in_model.dart';
import 'package:my_stories/screens/home.dart';
import 'package:provider/provider.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'username', hintText: 'ユーザーネームを入力してください'),
                  validator: context.read<SignInModel>().emptyValidator,
                  onSaved: (value) =>
                      context.read<SignInModel>().username = value!,
                ),
                TextFormField(
                  obscureText: !context.watch<SignInModel>().showPassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'パスワードを入力してください',
                    suffixIcon: IconButton(
                      icon: Icon(context.watch<SignInModel>().showPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () =>
                          context.read<SignInModel>().togglePasswordVisible(),
                    ),
                  ),
                  validator: context.read<SignInModel>().emptyValidator,
                  onSaved: (value) =>
                      context.read<SignInModel>().password = value!,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 16, 0, 8),
                  child: Text(
                    context.watch<SignInModel>().message,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.pink[400],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                      onPressed: () async {
                        context.read<SignInModel>().setMessage('');

                        if (_formKey.currentState!.validate()) {
                          // 入力チェック
                          _formKey.currentState!.save(); // 入力チェックOK -> フォームの値を同期する

                          var response =
                              await context.read<SignInModel>().auth();
                          print('auth response = $response');

                          if (response) {
                            Navigator.push(
                              // 画面遷移
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );

                            ScaffoldMessenger.of(context).showSnackBar(
                              // SnackBar表示
                              SnackBar(
                                content: Text('ログインしました'),
                              ),
                            );
                          } else {
                            context
                                .read<SignInModel>()
                                .setMessage('パスワードが誤っています'); // エラーメッセージセット
                          }
                        }
                      }, child: const Text('ログイン'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
