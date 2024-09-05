import 'package:flutter/material.dart';
import 'package:zerodha/ui/HomePage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              controller: textEditingController,
            ),
            IconButton(
              onPressed: () {
                if (textEditingController.text == '1212') {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => MyHomePage(),
                    ),
                  );
                }
              },
              icon: const Icon(
                Icons.navigate_next_outlined,
              ),
            )
          ],
        ),
      ),
    );
  }
}
