enum CustomerType { VIP, PREMIUM, GUEST }

class Customer {
  final CustomerType type;
  final double balance;

  Customer({required this.type, required this.balance});
}
