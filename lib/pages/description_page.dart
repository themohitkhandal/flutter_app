import 'package:flutter/material.dart';
import 'package:flutter_app/class/card_class.dart';
import 'package:flutter_app/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double customFontSize = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.box.title),
          actions: [
            IconButton(
              onPressed: () => {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('SnackBar'),
                    behavior: SnackBarBehavior.floating,
                  ),
                )
              },
              icon: const Icon(Icons.info_outline),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(widget.box.imagePath),
                Wrap(
                  spacing: kHeight10,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            customFontSize = 25;
                          });
                        },
                        child: const Text('Small Text')),
                    OutlinedButton(
                        onPressed: () {
                          setState(() {
                            customFontSize = 35;
                          });
                        },
                        child: const Text('Meduim Text')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            customFontSize = 45;
                          });
                        },
                        child: const Text('Large Text')),
                    FilledButton(
                        onPressed: () {
                          setState(() {
                            customFontSize = 200;
                          });
                        },
                        child: const Text('Huge Text'))
                  ],
                ),
                FittedBox(
                  child: Text(
                    widget.box.title,
                    style: TextStyle(
                      fontSize: customFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: kHeight10,
                ),
                Text(
                  widget.box.desc,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ));
  }
}
