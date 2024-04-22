import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IconContainer extends StatelessWidget {
  final String url;

  const IconContainer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      height: 150.0,
      child: Image.network(url),
    );
  }
}