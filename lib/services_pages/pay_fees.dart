import 'package:flutter/material.dart';
import 'package:checkout_screen_ui/checkout_page.dart';

class FeePayment extends StatefulWidget {
  const FeePayment({super.key});

  @override
  State<FeePayment> createState() => _FeePaymentState();
}

class _FeePaymentState extends State<FeePayment> {
  final List<PriceItem> _priceItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CheckoutPage(
        priceItems: _priceItems,
        payToName: 'IGNOU',
        onCardPay: (results) =>
            print('Credit card form submitted with results: $results'),
        onBack: () => Navigator.of(context).pop(),
      ),
    );
  }
}
