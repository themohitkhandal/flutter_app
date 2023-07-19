import 'package:flutter/material.dart';
import 'package:flutter_app/core/notifier.dart';
import 'package:flutter_app/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // brightness: isDark ? Brightness.dark : Brightness.light,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey, brightness: isDark ? Brightness.dark : Brightness.light),
            useMaterial3: true,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
