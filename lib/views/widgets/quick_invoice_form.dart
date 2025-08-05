import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/views/widgets/custom_button.dart';
import 'package:adaptive_dashboard/views/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hintText: 'Type Item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Item amount',
                hintText: 'Type Item name',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                textColor: Color(0xFF4EB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton(text: 'Send Money')),
          ],
        ),
      ],
    );
  }
}

class CusotmTextButton extends StatelessWidget {
  const CusotmTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 62,
        child: Center(
          child: Text(
            'Add more details',
            style: AppStyles.styleSemiBold18(
              context,
            ).copyWith(color: Color(0xFF4EB7F2)),
          ),
        ),
      ),
    );
  }
}
