// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Models/Dog.dart';

class ImageNameWidget extends StatelessWidget {
  final Dog dog;
  const ImageNameWidget({super.key, required this.dog});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(dog.imageLink),
        ),
        const SizedBox(height: 16),
        Text(
          dog.name,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
