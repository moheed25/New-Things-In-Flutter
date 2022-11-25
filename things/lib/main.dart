import 'package:flutter/material.dart';
import 'package:things/dropdown.dart';
import 'package:things/email.dart';
//import 'package:things/grid.dart';
import 'package:things/gridview/grid.dart';
import 'package:things/list.generate/list.generate.dart';
// import 'package:things/ratingbar/ratingbaaarr.dart';
// import 'package:things/smooth_rating/smoothrating.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home:

    //RatingBar()
    //SmoothRating()
    //ListGenerate()
   Grid()
        //Email(),
        );
  }
}
