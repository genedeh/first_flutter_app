import 'package:first_flutter_app/data/constants.dart';
import 'package:first_flutter_app/views/pages/course_page.dart';
import 'package:first_flutter_app/widgets/container_widget.dart';
import 'package:first_flutter_app/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'LUNA', nextPage: CoursePage()),
            Column(
              children: List.generate(kTitles.length, (index) {
                return ContainerWidget(
                  title: kTitles.elementAt(index),
                  description: 'This is a Description',
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
