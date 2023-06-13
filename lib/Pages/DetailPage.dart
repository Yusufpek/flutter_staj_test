// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Constants/ConstantsExport.dart';
import '../Models/Dog.dart';
import '../Models/RateModel.dart';
import '../Widgets/ImageNameWidget.dart';

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
                for (RateModel model in goodWithList(dog)) ratingBar(model),
                const Divider(thickness: 3),
                for (RateModel model in coatList(dog)) ratingBar(model),
                const Divider(thickness: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ratingBar(RateModel rate) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(rate.title),
          const SizedBox(height: 8),
          RatingBar(
            initialRating: rate.rate.toDouble(),
            direction: Axis.horizontal,
            allowHalfRating: true,
            ignoreGestures: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
              full: Image.asset(CustomImages.pawFullImage),
              empty: Image.asset(CustomImages.pawEmptyImage),
              half: const Icon(Icons.pets),
            ),
            onRatingUpdate: (rating) {},
          ),
        ],
      );
}
