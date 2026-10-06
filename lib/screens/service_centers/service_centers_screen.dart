import 'package:flutter/material.dart';

class ServiceCentersScreen extends StatelessWidget {
  const ServiceCentersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Service Centers')),
      body: const Center(child: Text('Service Centers Screen')),
    );
  }
}
