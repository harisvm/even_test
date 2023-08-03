import 'package:flutter/material.dart';

/// [isExpanded] expands button along the width of screen.
class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.onTap,
    this.isExpanded = false,
  });

  final bool isExpanded;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    const text = Text('Submit');
    return OutlinedButton(
      onPressed: onTap,
      child: isExpanded ? const Center(child: text) : text,
    );
  }
}
