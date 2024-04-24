import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  final String url;

  const ProfileContainer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(80.0),
      child: SizedBox(
        width: 150.0,
        height: 150.0,
        child: Image.network(url),
      ),
    );
  }
}