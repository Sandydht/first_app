import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      'name': 'Sandika',
      'age': 23,
      'favColors': ['Black', 'Red', 'Amber', 'Black', 'Red', 'Amber''Black', 'Red', 'Amber''Black', 'Red', 'Amber''Black', 'Red', 'Amber''Black', 'Red', 'Amber''Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
    {
      'name': 'Sandy',
      'age': 27,
      'favColors': ['Black', 'Red', 'Amber']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapping List',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Mapping List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColors = data['favColors'];

            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: ${data['name']}'),
                            Text('Age: ${data['age'].toString()}'),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myFavColors.map((color) {
                          return Container(
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 8
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text('${color.toString()}'),
                          );
                        }).toList()
                      ),
                    )
                  ],
                ),
              )
            );
          }).toList(),
        )
      ),
    );
  }
}