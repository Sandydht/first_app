import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;

  CustomBadge({
    super.key,
    required this.child,
    required this.value,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: color != null ? color : Colors.amber
            ),
            constraints: BoxConstraints(
              minWidth: 16,
              minHeight: 16,
              maxWidth: 16,
              maxHeight: 16
            ),
            child: Center(
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              )
            )
          )
        )
      ],
    );
  }
}