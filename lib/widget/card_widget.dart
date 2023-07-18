import 'package:flutter/material.dart';

import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 4),
              Image.asset(image),
              Text(
                title,
                style: const TextStyle(
                    fontSize: kHeight20, fontWeight: FontWeight.bold),
              ),
              const Text("This is a description")
            ],
          )),
    );
  }
}
