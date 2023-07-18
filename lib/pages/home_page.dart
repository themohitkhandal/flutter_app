import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            const CardWidget(title: 'Singing', image: 'images/sing.png'),
            Row(
              children: const [
                Expanded(
                  child: CardWidget(title: 'Shopping', image: 'images/shopping.png'),
                ),
                Expanded(
                    child:
                        CardWidget(title: 'Influencer', image: 'images/influencer.png')),
              ],
            ),
            const CardWidget(title: 'Photography', image: 'images/photography.png')
          ],
        ),
      ),
    );
  }
}
