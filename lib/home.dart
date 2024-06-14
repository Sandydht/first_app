import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({ super.key });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Dialog',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          data.toString()
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context, 
            builder: (context) {
              return AlertDialog(
                title: Text('Alert Dialog'),
                content: Text('Alert Dialog Content'),
                actions: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        data = false;
                      });
                      Navigator.of(context).pop();
                    }, 
                    child: Text('No')
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        data = true;
                      });
                      Navigator.of(context).pop();
                    }, 
                    child: Text('Yes')
                  )
                ]
              );
            }
          );
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
