import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/view/widget/global/text_custom.dart';
import 'package:naqla/view/widget/orders/invoice_widget.dart';
import 'package:naqla/view/widget/orders/pay_or_tracking.dart';

import '../../../controller/orders/delivary_done_controller.dart';

class DelivaryDone extends StatelessWidget {
  const DelivaryDone({super.key});

  @override
  Widget build(BuildContext context) {
    DelivaryDoneControllerImp controller = Get.put(DelivaryDoneControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: TextCustom(text: "Delivered".tr),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          Get.width / 15,
        ),
        child: Column(
          children: [
            InvoiceWidget(
              language: controller.language,
              onTap: () => controller.showInvoice(),
            ),
            SizedBox(
              height: Get.height / 10,
            ),
            GetBuilder<DelivaryDoneControllerImp>(
              builder: (controller) {
                return controller.showInvoiceDetails
                    ? PayOrTracking(
                        language: controller.language,
                        title: 'Deliveryinvoice',
                        button: 'Pay',
                        isRow: true,
                        price: "10",
                      )
                    : Container();
              },
            ),
            SizedBox(
              height: Get.height / 25,
            ),
            GetBuilder<DelivaryDoneControllerImp>(
              builder: (controller) {
                return controller.showInvoiceDetails
                    ? PayOrTracking(
                        language: controller.language,
                        title: 'Trackorder',
                        button: 'Trackorder',
                        isRow: false,
                      )
                    : Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
