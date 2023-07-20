import 'package:flutter/material.dart';
import 'package:flutter_app/widget_tree.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _userName;
  late final TextEditingController _password;

  @override
  void initState() {
    _userName = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userName.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 120.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'images/login.svg',
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                TextField(
                  controller: _userName,
                  keyboardType: TextInputType.name,
                  enableSuggestions: false,
                  decoration: const InputDecoration(
                    hintText: 'Enter Username',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF465B6A)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  controller: _password,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    hintText: 'Enter Password',
                    prefixIcon: Icon(
                      Icons.password,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF465B6A), ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
            FilledButton(
                onPressed: () {
                  final userName = _userName.text;
                  final passWord = _password.text;
                  if (userName == 'mohit' && passWord == '123') {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const WidgetTree();
                      },
                    ));
                  }
                },
                
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
