import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  const LatihanListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> listContainer = [
      Container(
        height: 200,
        width: 200,
        color: Colors.red,
        child: Center(
          child: Text('Item'),
        ),
      ),
      Container(
        height: 200,
        width: 200,
        color: Colors.yellow,
        child: Center(
          child: Text('Item'),
        ),
      ),
      Container(
        height: 200,
        width: 200,
        color: Colors.black,
        child: Center(
          child: Text('Item'),
        ),
      ),
      Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: Center(
          child: Text('Item'),
        ),
      ),
      Container(
        height: 200,
        width: 200,
        color: Colors.pink,
        child: Center(
          child: Text('Item'),
        ),
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan List View'),
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return listContainer[index];
          },
        )

        // ListView(
        //   // scrollDirection: Axis.horizontal,
        //   children: listContainer,
        // ),
        );
  }
}