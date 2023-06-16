// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Constants/CustomImages.dart';
import '../Models/RateModel.dart';

class RatinBarWidget extends StatelessWidget {
  final RateModel model;
  const RatinBarWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        RatingBar(
          initialRating: model.rate.toDouble(),
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
}
