import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/view/invoice_lists.dart';


class InvoiceDetail extends StatelessWidget {
  final String invoiceNo;
final String quantity;
final String date;
final String dueDate;
  InvoiceDetail({super.key, required this.invoiceNo, required this.quantity, required this.date, required this.dueDate});

 

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: CustomAppBar(
          appBarHeight: 80,
          actionIcons: Icons.person,
          leadingIcon: null,
          onPressedLeadIcon: () {},
          onPressedActionIcon: () {},
          title: "",
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1.2,
                          blurRadius: 3,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Invoice No", style: textStyle11),
                            Text(invoiceNo, style: textStyle11),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Quantity", style: textStyle11),
                            Text(quantity, style: textStyle11),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Date", style: textStyle11),
                            Text(date, style: textStyle11),
                          ],
                        ),const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Due Date", style: textStyle11),
                            Text(dueDate, style: textStyle11),
                          ],
                        ),
                      ],
                    )),
               
               
              ],
            ),
          ),
        ));
  }
}
