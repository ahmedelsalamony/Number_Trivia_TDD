import 'package:flutter/material.dart';

class RaisedButton extends StatelessWidget {
  final Color? color;
  final Function() onPressed;
  final Widget child;
  final TextStyle? style;
  const RaisedButton({
    super.key,
    this.color,
    this.style,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          textStyle: style,
        ),
        child: child);
  }
}
