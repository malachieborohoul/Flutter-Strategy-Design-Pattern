import 'package:flutter/material.dart';
import 'package:strategy_pattern/models/customer.dart';
import 'package:strategy_pattern/services/color_service.dart';

class OwedAmountWidget extends StatelessWidget {
  final double amount;
  final Customer customer;
  final ColorService colorService;

  const OwedAmountWidget({super.key, 
    required this.amount,
    required this.customer,
    required this.colorService,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorService.getColorForOwedAmount(amount, customer),
      width: 200,
      height: 200,
      child: Center(
        child: Text(
          'Amount: \$${amount.toString()}',
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}