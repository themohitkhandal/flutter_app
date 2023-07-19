import 'package:flutter/material.dart';
import 'package:flutter_app/class/card_class.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(title: 'Singing', imagePath: 'images/sing.png',  desc: singing),
            ),
            Row(
              children: [
                Expanded( 
                  child: CardWidget(
                    box: ItemClass(
                        title: 'Shopping', imagePath: 'images/shopping.png', desc: shopping),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: 'Influencer', imagePath: 'images/influencer.png' ,desc: influencer),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                  title: 'Photography', imagePath: 'images/photography.png', desc: photography),
            ),
          ],
        ),
      ),
    );
  }
}
