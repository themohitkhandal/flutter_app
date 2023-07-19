import 'package:flutter/material.dart';
import 'package:flutter_app/class/card_class.dart';

import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 4),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style: const TextStyle(
                    fontSize: kHeight20, fontWeight: FontWeight.bold),
              ),
              const Text("This is a description")
            ],
          )),
    );
  }
}
