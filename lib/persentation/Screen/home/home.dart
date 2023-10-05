import 'package:flutter/material.dart';
import 'package:team_project/core/constants.dart';
import 'package:team_project/persentation/Screen/home/Widgets/placeSelectCard.dart';
import 'package:team_project/persentation/Screen/home/Widgets/post_card.dart';
import 'package:team_project/persentation/Widgets/customAppBar.dart';


class Screen_Home extends StatelessWidget {
  const Screen_Home({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(
            title: Text("App Name",style: 
            ktextstyleblack(),),
          ),
        ),
        body: ListView(children: [
          kheight(),
        
        _PlaceselectorGenerator(),
         
        _postcardgenerator(),
        ],));
  }
}
// generator for all available districts
_PlaceselectorGenerator() {
  return SizedBox(
    height: 40,
    
    child: ListView.separated(
       padding: EdgeInsets.only(bottom:5),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      separatorBuilder: (context, index) => widthspace(),
      itemBuilder: (context, index) => PlaceSelectcard(place: keralaDistricts[index]),
    ),
  );
}

// post generator
_postcardgenerator() {
  return ListView.separated(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Divider(),
      itemCount: postimages.length,
      itemBuilder: (context, index) => Postcard(
        placename: keralaDistricts[index],
            Image: postimages[index],
          ));
}
