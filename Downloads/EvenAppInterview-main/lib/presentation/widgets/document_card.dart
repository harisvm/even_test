import 'package:EvenAppInterview/constants/colors.dart';
import 'package:EvenAppInterview/constants/decoration.dart';
import 'package:flutter/material.dart';

class DocumentCard extends StatelessWidget {
  const DocumentCard({
    super.key,
    required this.name,
    required this.content,
  });

  final String name;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(AppDecoration.borderRadius),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(name),
          Text(content),
        ],
      ),
    );
  }
}
