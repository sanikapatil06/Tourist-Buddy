class ActivityPlaces {
  String imageUrl;
  String name;
  double latitude;
  double longitutde;

  ActivityPlaces({
    required this.imageUrl,
    required this.name,
    required this.latitude,
    required this.longitutde,
  });
}

List<ActivityPlaces> beaches = [
  ActivityPlaces(
    imageUrl: 'assets/places/chowpatty.jpg',
    name: 'Girgaon Chowpatty',
    latitude: 18.9572,
    longitutde: 72.8197,
  ),
  ActivityPlaces(
    imageUrl: 'assets/images/juhu.jpg',
    name: 'Juhu Beach',
    latitude: 19.0974,
    longitutde: 72.8264,
  ),
  ActivityPlaces(
    imageUrl: 'assets/images/aksabeach.jpg',
    name: 'Aksa Beach',
    latitude: 18.941482,
    longitutde: 72.823679,
  ),
];

List<ActivityPlaces> park = [
  ActivityPlaces(
      imageUrl: 'assets/places/kamlanehru.jpg',
      name: 'Kamla Nehru Park',
      latitude: 18.9571,
      longitutde: 72.8056)
];

List<ActivityPlaces> temple = [
  ActivityPlaces(
      imageUrl: 'assets/places/siddhivinayak.jpg',
      name: 'SiddhiVinayak Temple',
      latitude: 19.0168,
      longitutde: 72.8302),
  ActivityPlaces(
      imageUrl: 'assets/places/mahalaxmi.jpg',
      name: 'Mahalaxmi Temple',
      latitude: 18.9773,
      longitutde: 72.8064),
  ActivityPlaces(
      imageUrl: 'assets/places/ttemple.jpg',
      name: 'Babulnath Temple',
      latitude: 72.808514,
      longitutde: 18.958872)
];
