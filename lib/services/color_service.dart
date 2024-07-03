import 'dart:ui';

import 'package:strategy_pattern/models/customer.dart';
import 'package:strategy_pattern/strategies/guest_owed_amount_strategy.dart';
import 'package:strategy_pattern/strategies/owed_amount_strategy.dart';
import 'package:strategy_pattern/strategies/premium_owed_amount_strategy.dart';
import 'package:strategy_pattern/strategies/vip_owed_amount_strategy.dart';

class ColorService {
  OwedAmountStrategy getStrategy(CustomerType customerType) {
    switch (customerType) {
      case CustomerType.VIP:
        return VipOwedAmountStrategy();
      case CustomerType.PREMIUM:
        return PremiumOwedAmountStrategy();
      case CustomerType.GUEST:
        return GuestOwedAmountStrategy();
      default:
        throw Exception('Unknown CustomerType');
    }
  }

  Color getColorForOwedAmount(double amount, Customer customer) {
    final strategy = getStrategy(customer.type);
    return strategy.execute(amount, customer.balance);
  }
}