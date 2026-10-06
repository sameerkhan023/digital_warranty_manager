import 'package:flutter/material.dart';

class AddReceiptScreen extends StatelessWidget {
  const AddReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Receipt')),
      body: const Center(child: Text('Add Receipt Screen')),
    );
  }
}
