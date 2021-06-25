import 'package:flutter/material.dart';
class CenteredView extends StatelessWidget {
  final Widget child;
  CenteredView({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 50),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
          child: child),
    );
  }
}
