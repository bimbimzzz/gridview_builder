import 'package:flutter/material.dart';
import 'package:gridview_builder/dataModel/dataModel.dart';

class GridViewBuilderWidget extends StatefulWidget {
  const GridViewBuilderWidget({super.key});

  @override
  State<GridViewBuilderWidget> createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilderWidget> {
  final fruit = List.of(allFood);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: fruit.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            final item = fruit[index];
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(fontSize: 23),
                  ),
                  Text(
                    'Harga : ${item.price}',
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ));
  }
}

//Thanks for watching :)
