import 'dart:math';

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import '../models/product.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
        'https://picsum.photos/id/$index/200',
        faker.food.restaurant(), 
        10000 + Random().nextInt(100000), 
        faker.lorem.sentence()
      );
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Model',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(dummyData[index].imageUrl.toString()),
            footer: Container(
              padding: EdgeInsets.all(10),
              color: Colors.black.withOpacity(0.7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${dummyData[index].title}',
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rp ${dummyData[index].price},-',
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  Text(
                    '${dummyData[index].description}',
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ],
              ),
            )
          );
        },
      )
    );
  }
}