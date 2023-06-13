// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Constants/CustomPaddings.dart';
import '../Models/Dog.dart';
import '../Pages/DetailPage.dart';

class DogCardWidget extends StatelessWidget {
  final Dog dog;
  const DogCardWidget({super.key, required this.dog});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(
            dog: dog,
          ),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: CustomPaddings.smallPadding,
          color: Colors.white,
          child: Column(
            children: [
              Image.network(dog.imageLink),
              const SizedBox(height: 16),
              Text(dog.name),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
