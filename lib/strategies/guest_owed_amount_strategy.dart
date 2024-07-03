// lib/strategies/guest_owed_amount_strategy.dart
import 'package:flutter/material.dart';
import 'owed_amount_strategy.dart';

class GuestOwedAmountStrategy implements OwedAmountStrategy {
  @override
  Color execute(double amount, double customerBalance) {
    // Implémentez la logique pour GUEST ici
    return Colors.grey; // Placeholder
  }
}
