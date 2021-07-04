import 'package:flutter/material.dart';
import 'package:testing_flutter/dummy_data.dart';
import 'package:testing_flutter/widgets/product_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, I\'m the home page'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductGrid(
                nested: true,
                images: galleryImages,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
