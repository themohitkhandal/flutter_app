import 'package:flutter/material.dart';
import 'package:flutter_app/class/card_class.dart';
import 'package:flutter_app/pages/description_page.dart';

import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(box: box);
            },
          ),
        );
      },
      child: Card(
        child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Column(
                children: [
                  const SizedBox(height: 4),
                  Image.asset(box.imagePath),
                  Text(
                    box.title,
                    style: const TextStyle(
                        fontSize: kHeight20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Open to learn about ${box.title}',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
