import 'package:flutter/material.dart';
import 'package:team_project/core/constants.dart';

class PlaceSelectcard extends StatelessWidget {
  PlaceSelectcard({super.key, required this.place});
  final String place;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(place);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(5, 5),
              blurRadius: 5,
            )
          ],
          borderRadius: kborderRadius10(),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(place,style: ktextstyleblack(),)),
        ),
      ),
    );
  }
}
