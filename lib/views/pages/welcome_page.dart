import 'package:first_flutter_app/views/pages/auth/login_page.dart';
import 'package:first_flutter_app/views/widget_tree.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
            Lottie.asset('assets/lotties/welcome.json'),
            FittedBox(
              child: Text(
                'LUNA',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0,
                  letterSpacing: 10,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                minimumSize: Size(double.infinity, 40.0),
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
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white12,
                minimumSize: Size(double.infinity, 40.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              child: Text('Login', style: TextStyle(fontSize: 10.0)),
            ),
          ],
        ),
      ),
    );
  }
}
