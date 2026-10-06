import 'package:flutter/material.dart';

class ActiveWarrantiesScreen extends StatelessWidget {
  const ActiveWarrantiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Active Warranties')),
      body: const Center(child: Text('Active Warranties Screen')),
    );
  }
}
