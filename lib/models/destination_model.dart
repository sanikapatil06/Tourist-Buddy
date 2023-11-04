import 'package:tourist_buddy/models/activity_model.dart';
import 'package:tourist_buddy/places/Vasai.dart';
import 'package:tourist_buddy/places/aurangabad.dart';
import 'package:tourist_buddy/places/kolhapur.dart';
import 'package:tourist_buddy/places/mumbai.dart';
import 'package:tourist_buddy/places/nagpur.dart';
import 'package:tourist_buddy/places/nasik.dart';
import 'package:tourist_buddy/places/pune.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;
  double latitude;
  double longitutde;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.latitude,
    required this.longitutde,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    latitude: 18.951832,
    longitutde: 72.8146698,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    latitude: 18.951832,
    longitutde: 72.8146698,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    latitude: 18.951832,
    longitutde: 72.8146698,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/gateway.png',
    city: 'Mumbai City',
    country: 'India',
    description: 'MUMBAI — THE CITY OF SUCCESS',
    activities: mumbai,
    latitude: 18.9220,
    longitutde: 72.8347,
  ),
  Destination(
      imageUrl: 'assets/images/palghar.jpg',
      city: 'Palghar City',
      latitude: 19.6967,
      longitutde: 72.7699,
      country: 'India',
      description: 'PALGHAR - THE CITY OF HISTORICAL LEGACY',
      activities: vasaivirar),
  Destination(
    imageUrl: 'assets/images/pune.jpg',
    city: 'Pune City',
    country: 'India',
    description: 'PUNE – THE CITY WITH AN ATTITUDE',
    activities: pune,
    latitude: 18.5204,
    longitutde: 73.856,
  ),
  Destination(
    imageUrl: 'assets/images/ghota_ghat_nasik.jpg',
    city: 'Nasik City',
    country: 'India',
    description: 'NASIK THE CITY OF ORANGE',
    activities: nashik,
    latitude: 19.9975,
    longitutde: 73.7898,
  ),
  Destination(
    imageUrl: 'assets/images/aurangabad.jpg',
    city: 'Aurangabad City',
    country: 'India',
    description: 'AURANGABAD - TOURISM CAPITAL OF MAHARASHTRA',
    activities: aurangabad,
    latitude: 19.8762,
    longitutde: 75.3433,
  ),
  Destination(
    imageUrl: 'assets/images/nagpur.jpg',
    city: 'Nagpur City',
    country: 'India',
    description: 'NAGPUR - ORANGE CITY OF INDIA',
    activities: nagpur,
    latitude: 21.1458,
    longitutde: 79.0882,
  ),
  Destination(
    imageUrl:
        'assets/images/kolhapur.jpg',
    city: 'Kolhapur City',
    country: 'India',
    description: 'Visit Mumbai you will love it',
    activities: kolhapur,
    latitude: 16.7050,
    longitutde: 74.2433,
  ),
];
