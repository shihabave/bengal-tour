import 'package:bengal_tour_app/model/activity_model.dart';
import 'package:flutter/cupertino.dart';

class Destination {
  String? imageUrl;
  String? city;
  String? contrry;
  String? description;
  List<Activity>? activites;

  Destination({
    this.imageUrl,
    this.activites,
    this.city,
    this.contrry,
    this.description,
  });
}

List<Activity> activites = [
  Activity(
      imageUrl: 'images/sdhjh.jpg',
      city: 'Sentmartim\n bangladesh',
      type: 'long Tour',
      startTime: ['8:00 am', '11:00 pm'],
      rating: 6,
      price: 300),
  Activity(
      imageUrl: 'images/sdhjh.jpg',
      city: 'Sentmartim\n bangladesh',
      type: 'long Tour',
      startTime: ['8:00 am', '11:00 pm'],
      rating: 6,
      price: 300),
  Activity(
      imageUrl: 'images/sdhjh.jpg',
      city: 'Sentmartim\n bangladesh',
      type: 'long Tour',
      startTime: ['8:00 am', '11:00 pm'],
      rating: 6,
      price: 300)
];

List<Destination> destination = [
  Destination(
    imageUrl: 'images/wellcome_green.jpg',
    city: 'Dhaka',
    contrry: 'Bangladesh',
    description: 'The area is must populer',
    activites: activites,
  ),
  Destination(
    imageUrl: 'images/wellcome_green.jpg',
    city: 'Dhaka',
    contrry: 'Bangladesh',
    description: 'The area is must populer',
    activites: activites,
  ),
  Destination(
    imageUrl: 'images/wellcome_green.jpg',
    city: 'Dhaka',
    contrry: 'Bangladesh',
    description: 'The area is must populer',
    activites: activites,
  ),
];
