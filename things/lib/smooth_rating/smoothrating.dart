import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SmoothRating extends StatefulWidget {
  const SmoothRating({super.key});

  @override
  State<SmoothRating> createState() => _SmoothRatingState();
}

class _SmoothRatingState extends State<SmoothRating> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SmoothStarRating(
              // allowHalfRating: false,
              // onRatingChanged: (v) {
              //   rating = v;
              //   setState(() {});
              // },
              starCount: 5,
              //  rating: rating,
              size: 40.0,
              // filledIconData: Icons.blur_off,
              // halfFilledIconData: Icons.blur_on,
              color: Colors.green,
              borderColor: Colors.green,
              spacing: 0.0)
        ],
      ),
    );
  }
}
