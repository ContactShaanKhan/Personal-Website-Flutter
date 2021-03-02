import 'package:flutter/material.dart';

class Buffer extends StatelessWidget {
  final height;
  const Buffer(this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
