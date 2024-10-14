import 'package:flutter/material.dart';
import 'package:pertemuan_4/list_view.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LatihanListView(),
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
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_alarm_rounded),
                  SizedBox(
                    height: 24,
                  ),
                  const Text("Set My Alarm"),
                ],
              ),
            ),
            color: Colors.amber,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_balance_wallet_outlined),
                  SizedBox(
                    height: 24,
                  ),
                  const Text("My Balance"),
                ],
              ),
            ),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_chart_outlined),
                  SizedBox(
                    height: 24,
                  ),
                  const Text("My Chart"),
                ],
              ),
            ),
            color: Colors.lightGreen,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ad_units_outlined),
                  SizedBox(
                    height: 24,
                  ),
                  const Text("My Units"),
                ],
              ),
            ),
            color: Colors.blueGrey,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_a_photo_outlined),
                  SizedBox(
                    height: 24,
                  ),
                  const Text("My Gallery"),
                ],
              ),
            ),
            color: Colors.teal,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_shopping_cart_outlined),
                  SizedBox(
                    height: 24,
                  ),
                  const Text("My Cart"),
                ],
              ),
            ),
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}