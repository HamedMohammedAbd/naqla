import 'package:flutter/material.dart';

import '../../../../widget/captin/orders_widget.dart/orders_design_widget.dart';

class AvailableOrders extends StatelessWidget {
  const AvailableOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
            4,
            (index) {
              return const OrdersDesignWidget(
                isButton: true,
                text: 'منذ 5د',
              );
            },
          ),
        ],
      ),
    );
  }
}
