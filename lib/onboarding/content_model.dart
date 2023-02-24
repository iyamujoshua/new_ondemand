import 'package:flutter/material.dart';
import 'package:ondemand/onboarding/onboarding_one.dart';

class UnboardingContent {
  String image;
  String title;
  String discription;

  UnboardingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      title: "Hiring Service",
      image: "asset/one.png",
      discription: "We provide\n"
       "professional services\n"
        "to you at affordable prices"),
  UnboardingContent(
      title: "Hiring Service",
      image: "asset/one.png",
      discription: "Get amazing\n"
       "quality of serices from\n"
        "experienced individuals"),
  UnboardingContent(
      title: "Hiring Service",
      image: "asset/one.png",
      discription: "Our top priority\n"
       "is your satisfaction\n"
        "and the best results")
];
