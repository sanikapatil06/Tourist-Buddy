import 'package:tourist_buddy/models/places_activity_model.dart';

class Places {
  String imageUrl;
  String name;
  List<ActivityPlaces> activities;
  Places({
    required this.imageUrl,
    required this.name,
    required this.activities,
  });
}

List<Places> place = [
  Places(
      imageUrl: 'assets/places/beach.jpg',
      name: "Beaches",
      activities: beaches),
  Places(imageUrl: 'assets/places/park.jpg', name: "Park", activities: park),
  Places(
      imageUrl: 'assets/places/temple.jpg', name: "Temple", activities: temple),
];
