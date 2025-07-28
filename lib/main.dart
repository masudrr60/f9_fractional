import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rahat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rahat"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[ Container(
            height: 200,
            width: 300,
            color: Colors.blue,
            child: FractionallySizedBox(
              alignment: Alignment.topLeft,
              heightFactor: 0.5,
              widthFactor: 0.8,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        SizedBox(
          height: 10,
        ),
          SizedBox(
            height: 50,
            width: 30,
            child: Column(
              children: [
                Expanded(
                  flex:1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
SizedBox(
  height: 20,
),
         Center(
           child: Stack(
             children: [
               Container(
                 height: 400,
                 width: 300,
                 color: Colors.red,
               ),
               Container(
                 height: 140,
                 width: 130,
                 color: Colors.blue,
               ),
               Positioned(
                 bottom: 10,
                 right: 5,
                 child: Container(
                   height: 130,
                   width:120,
                   color: Colors.yellow,
                 ),
               ),
             ],
           ),
         ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}