import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Icon(Icons.notification_add),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25.0),
            child: Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Image.asset(
                  'assets/images/bg.jpg',
                  fit: BoxFit.cover,
                  height: 300,
                  width: double.infinity,
                ),
                SizedBox(height: 300, child: Center(child: Text('Flutter'))),
              ],
            ),
          ),
          ListTile(
            title: Text('Some Title'),
            tileColor: Colors.red,
            leading: Icon(Icons.join_full),
            trailing: Text('Wow'),
            onTap: () {
              print('Click on Some title');
            },
          ),
          Wrap(
            children: [
              Text('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'),
              Text('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'),
            ],
          ),
        ],
      ),
    );
  }
}
