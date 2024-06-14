import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dismissible',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Dismissible',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(index.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  child: Icon(
                    Icons.delete,
                    size: 24,
                  ),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Center(
                      child: Text('${index + 1}'),
                    ),
                  ),
                  title: Text(
                    'Title'
                  ),
                  subtitle: Text(
                    'Subtitle'
                  ),
                ),
                onDismissed: (direction) {
                  if (direction == DismissDirection.endToStart) {
                    print('on dismissed');
                  } else {
                    print('start to end');
                  }
                },
                confirmDismiss: (direction) {
                  return showDialog(
                    context: context, 
                    builder: (context) {
                      return AlertDialog(
                        title: Text('confirm'),
                        content: Text('Are you sure to delete this item ?'),
                        actions: [
                          OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            }, 
                            child: Text('No')
                          ),
                          FilledButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            }, 
                            child: Text('Yes')
                          )
                        ],
                      );
                    }
                  );
                },
              );
            },
          )
        ),
      ),
    );
  }
}