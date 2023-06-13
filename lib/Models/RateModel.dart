// ignore_for_file: file_names

import 'package:staj_test/Constants/Texts.dart';

import 'Dog.dart';

class RateModel {
  final String title;
  final int rate;

  RateModel(this.title, this.rate);
}

List<RateModel> goodWithList(Dog dog) {
  return [
    RateModel(Texts.goodWithChildren, dog.goodWithChildren),
    RateModel(Texts.goodWithOtherDogs, dog.goodWithOtherDogs),
    RateModel(Texts.goodWithStrangers, dog.goodWithStrangers)
  ];
}

List<RateModel> coatList(Dog dog) {
  return [
    RateModel(Texts.coatLength, dog.coatLength),
    RateModel(Texts.shedding, dog.shedding),
    RateModel(Texts.grooming, dog.grooming)
  ];
}
