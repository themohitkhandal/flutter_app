import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/sing.png'),
            radius: 70,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            height: kHeight10,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Mohit Khandal'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('mohit1319khandal@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('themohitkhandal.com'),
          )
        ],
      ),
    );
  }
}
