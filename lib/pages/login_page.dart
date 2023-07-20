import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/widget_tree.dart';

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
            const Flexible(
              flex: 1,
              child:  Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF78C1F3)),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
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
                            BorderSide(width: 3, color: Color(0xFF78C1F3)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
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
                            BorderSide(width: 3, color: Color(0xFF78C1F3)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: FilledButton(
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
                    print(userName + passWord);
                  },
                  
                  child: const Text('Login')),
            )
          ],
        ),
      ),
    );
  }
}
