// lib/main.dart
import 'package:flutter/material.dart';
import 'models/customer.dart';
import 'services/color_service.dart';
import 'ui/owed_amount_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Owed Amount Strategy Example'),
        ),
        body: Center(
          child: OwedAmountWidget(
            amount: 120,
            customer: Customer(type: CustomerType.VIP, balance: 150),
            colorService: ColorService(),
          ),
        ),
      ),
    );
  }
}
