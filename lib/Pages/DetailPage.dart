// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Constants/ConstantsExport.dart';
import '../Models/Dog.dart';
import '../Models/RateModel.dart';
import '../Widgets/ImageNameWidget.dart';
import '../Widgets/RatinBarWidget.dart';

class DetailPage extends StatelessWidget {
  final Dog dog;
  const DetailPage({super.key, required this.dog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: CustomPaddings.mediumPadding,
          padding: CustomPaddings.smallPadding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).cardColor,
          ),
          child: GestureDetector(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: Texts.dogHeroTag + dog.name,
                  child: ImageNameWidget(dog: dog),
                ),
                const Divider(thickness: 3),
                for (RateModel model in goodWithList(dog))
                  RatinBarWidget(model: model),
                const Divider(thickness: 3),
                for (RateModel model in coatList(dog))
                  RatinBarWidget(model: model),
                const Divider(thickness: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
