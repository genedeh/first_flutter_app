import 'package:first_flutter_app/views/widget_tree.dart';
import 'package:first_flutter_app/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text('Get Started', style: TextStyle(fontSize: 10.0)),
            ),
          ],
        ),
      ),
    );
  }
}
