import 'package:flutter/material.dart';

class ExpiredWarrantiesScreen extends StatelessWidget {
  const ExpiredWarrantiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expired Warranties')),
      body: const Center(child: Text('Expired Warranties Screen')),
    );
  }
}
