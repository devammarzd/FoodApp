import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;

  const RatingBar({Key key, this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totStars = 5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(totStars, (i) {
        int index = i + 1;
        return Icon(
          Icons.star,
          color: index <= rating ? Colors.yellow[800] : Colors.grey[400],
          size: 25,
        );
      }),
    );
  }
}
