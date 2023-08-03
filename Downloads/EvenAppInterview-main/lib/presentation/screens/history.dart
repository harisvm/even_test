import 'package:EvenAppInterview/presentation/widgets/document_card.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            DocumentCard(name: 'First', content: 'content 1'),
            SizedBox(height: 16),
            DocumentCard(name: 'Second', content: 'content 2'),
          ],
        ),
      ),
    );
  }
}
