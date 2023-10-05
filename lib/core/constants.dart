import 'package:flutter/material.dart';

List<String> postimages = [
  "https://i.pinimg.com/564x/b4/91/2f/b4912f92b749029151c2adaa3284f629.jpg",
  "https://i.pinimg.com/736x/0c/72/bd/0c72bd76050d7a0d8fc9c320032be3f8.jpg",
  "https://i.pinimg.com/736x/0c/d1/54/0cd154e4536c7755b15b992f5eefae48.jpg",
  "https://i.pinimg.com/564x/6e/a4/7b/6ea47b5f01e1a98d22598605c636cbd6.jpg",
  "https://i.pinimg.com/564x/7e/f8/9e/7ef89e9cbbba3ebad91d99bdc7d722fe.jpg"
  
];
final List<String> keralaDistricts = [
  'Thiruvananthapuram',
  'Kollam',
  'Pathanamthitta', 
  'Alappuzha',
  'Kottayam',
  'Idukki',
  'Ernakulam',
  'Thrissur',
  'Palakkad',
  'Malappuram',
  'Kozhikode',
  'Wayanad',
  'Kannur',
  'Kasaragod',
];




kborderRadius10() => BorderRadius.circular(10);
kborderRadius40() => BorderRadius.circular(40);
widthspace() => SizedBox(
      width: 5,
    );
kheight() => SizedBox(
      height: 10,
    );

ktextstyle() => TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
ktextstyleblack() => const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold);
kblackcolor() => Colors.black;
kmildgrey() => Color.fromARGB(255, 43, 41, 41);
