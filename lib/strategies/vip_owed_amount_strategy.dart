import 'package:flutter/material.dart';
import 'owed_amount_strategy.dart';

class VipOwedAmountStrategy implements OwedAmountStrategy {
  @override
  Color execute(double amount, double customerBalance) {
    if (amount >= 0 && amount <= 49) {
      return Colors.green;
    } else if (amount >= 50 && amount <= 99) {
      return customerBalance > 200 ? Colors.yellow : Colors.orange;
    } else if (amount >= 100 && amount <= 199) {
      return customerBalance < 100 ? Colors.orange : Colors.red;
    } else {
      return customerBalance > 100 ? Colors.orange : Colors.red;
    }
  }
}
