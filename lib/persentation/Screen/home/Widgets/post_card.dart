import 'package:flutter/material.dart';
import 'package:team_project/core/constants.dart';

class Postcard extends StatelessWidget {
  const Postcard({
    super.key,
    required this.Image, required this.placename,
  });
  final String Image;
  final String placename;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: size.width,
        height: size.width - 30,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(Image)),
          borderRadius: kborderRadius10(),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.red,
                  ),
                  Text(placename, style: ktextstyle()),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: kborderRadius40()),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.white.withOpacity(0.7),
                child: InkWell(
                  onTap: () {
                    print("Naviagete to account ");
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text("username"),
                    subtitle: Text("Time date"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
