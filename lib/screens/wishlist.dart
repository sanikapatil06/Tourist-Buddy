import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourist_buddy/maps_utils.dart';
import 'package:tourist_buddy/models/places_activity_model.dart';
import 'package:tourist_buddy/models/places_model.dart';
import 'package:tourist_buddy/screens/favorite_screen.dart';

class Wishlist extends StatefulWidget {
  final Places places;

  const Wishlist({required this.places});

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
          itemCount: widget.places.activities.length,
          itemBuilder: (BuildContext context, int index) {
            ActivityPlaces activity = widget.places.activities[1];
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 20.0, 20.0, 5.0),
                  height: 170.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120.0,
                              child: Text(
                                activity.name,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            IconButton(
                              onPressed: () => FavoriteScreen(),
                              icon: Icon(FontAwesomeIcons.heart),
                              iconSize: 25.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          children: [
                            SizedBox(width: 10.0),
                            TextButton(
                              onPressed: () {
                                MapUtils.openMap(
                                    activity.latitude, activity.longitutde);
                              },
                              child: Icon(
                                FontAwesomeIcons.locationArrow,
                                size: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  top: 15.0,
                  bottom: 15.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage(activity.imageUrl),
                      width: 110.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
