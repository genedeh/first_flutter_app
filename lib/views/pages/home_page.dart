import 'package:first_flutter_app/data/constants.dart';
import 'package:first_flutter_app/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(title: 'LUNA'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Basic Layout', style: CardStyle.titleText),
                    Text('Description', style: CardStyle.bodyText),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
