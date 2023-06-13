// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Widgets/ImageNameWidget.dart';
import '../Constants/ConstantsExport.dart';
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
        MaterialPageRoute(builder: (context) => DetailPage(dog: dog)),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).cardColor,
        ),
        padding: CustomPaddings.smallPadding,
        child: Hero(
          tag: Texts.dogHeroTag + dog.name,
          child: ImageNameWidget(dog: dog),
        ),
      ),
    );
  }
}
