import 'package:flutter/material.dart';

class AddDocument extends StatelessWidget {
  const AddDocument({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildUploadDocButton(),
    );
  }

  Widget _buildUploadDocButton() {
    return InkWell(
      onTap: () {},
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Please upload 1 more document'),
          Icon(Icons.add),
        ],
      ),
    );
  }
}
