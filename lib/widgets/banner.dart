import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Banner extends StatelessWidget {
  final String image;
  final AssetImage _assetImage;

  Banner({Key? key, required this.image}) : _assetImage = AssetImage(image);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: _assetImage, // Use the constant instance here
          fit: BoxFit.cover,
        ),
        color: Colors.amber,
      ),
    );
  }
}