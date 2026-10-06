import 'package:flutter/material.dart';

class ReceiptViewScreen extends StatelessWidget {
  const ReceiptViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Receipt')),
      body: const Center(child: Text('Receipt View Screen')),
    );
  }
}
