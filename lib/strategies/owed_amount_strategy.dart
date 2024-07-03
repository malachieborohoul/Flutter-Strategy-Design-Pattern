import 'package:flutter/material.dart';

abstract class OwedAmountStrategy {
  Color execute(double amount, double customerBalance);
}

