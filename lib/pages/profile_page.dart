import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/core/notifier.dart';
import 'package:flutter_app/pages/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.logout))
        ],
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isdark, child) {
            return isdark
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode);
          },
        ),
      ),
    );
  }
}
