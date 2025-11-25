import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.blueAccent, child: Text('Hello'),)),
          Flexible(
            child: Container(color: Colors.orange, child: Text('Hello')),
          ),
        ],
      ),
    );
  }
}
