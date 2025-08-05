import 'package:adaptive_dashboard/views/widgets/custom_container.dart';
import 'package:adaptive_dashboard/views/widgets/latest_transaction.dart';
import 'package:adaptive_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:adaptive_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 36),
          LatesetTransaction(),
          Divider(height: 48, color: Colors.grey),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
