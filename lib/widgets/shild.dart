import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shild extends StatelessWidget {
  final String image;
  final double width;
  const Shild({Key? key, required this.image, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: image,
        child: Image.network(
          image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
