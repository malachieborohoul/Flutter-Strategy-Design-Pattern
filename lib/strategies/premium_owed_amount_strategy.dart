import 'package:flutter/material.dart';
import 'owed_amount_strategy.dart';

class PremiumOwedAmountStrategy implements OwedAmountStrategy {
  @override
  Color execute(double amount, double customerBalance) {
    // Implémentez la logique pour PREMIUM ici
    return Colors.blue; // Placeholder
  }
}
