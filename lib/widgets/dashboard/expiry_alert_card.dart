import 'package:flutter/material.dart';

class ExpiryAlertCard extends StatelessWidget {
  final String productName;
  final int daysLeft;
  final VoidCallback? onTap;

  const ExpiryAlertCard({
    super.key,
    required this.productName,
    required this.daysLeft,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber.shade50,
      child: ListTile(
        onTap: onTap,
        leading: const Icon(Icons.warning, color: Colors.amber),
        title: Text(productName),
        subtitle: Text('Expires in $daysLeft days'),
      ),
    );
  }
}
