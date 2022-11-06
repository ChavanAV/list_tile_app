import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Text("List Tile"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.separated(
              itemCount: 32,
              itemBuilder: (context, index) {
                return Expanded(
                  flex: 3,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: Icon(Icons.man_rounded),
                    ),
                    title: Text("Akshay Chavan"),
                    subtitle: Text('From Adhiv\nxyz 1 ecer, qwe 12 sfoot.'),
                    trailing: Text("12:12 PM"),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 15,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
