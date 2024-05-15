import 'package:travel_ui/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/one.jpg',
    name: 'Kolkata',
    type: "Begali",
    startTimes: ['9:00 am', '11:00 pm'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/two.jpg',
    name: 'Kolkata',
    type: "Begali",
    startTimes: ['9:00 am', '11:00 pm'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/three.jpg',
    name: 'Kolkata',
    type: "Begali",
    startTimes: ['9:00 am', '11:00 pm'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/four.jpg',
    name: 'Kolkata',
    type: "Begali",
    startTimes: ['9:00 am', '11:00 pm'],
    rating: 5,
    price: 30,
  ),
];

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/one.jpg',
      city: 'Kolkata',
      country: 'India',
      description: 'visit kolkata and more',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/two.jpg',
      city: 'Delhi',
      country: 'India',
      description: 'visit kolkata and more',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/three.jpg',
      city: 'Varanasi',
      country: 'India',
      description: 'visit kolkata and more',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/four.jpg',
      city: 'Tamilnadu',
      country: 'India',
      description: 'visit kolkata and more',
      activities: activities),
];
