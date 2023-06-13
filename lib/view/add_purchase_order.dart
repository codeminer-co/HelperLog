import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_tile.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';
import 'package:helperlog/view/add_invoice.dart';

class AddPurchaseOrder extends StatefulWidget {
  const AddPurchaseOrder({super.key});

  @override
  State<AddPurchaseOrder> createState() => _AddPurchaseOrderState();
}

class _AddPurchaseOrderState extends State<AddPurchaseOrder> {
  final TextEditingController _poNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
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
              child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Text(
                "Add Purchase Order",
                style: textStyle14,
              ),
              const SizedBox(height: 20),
              Text(
                  "Enter the details below and tap the add button to add the purchase order to the manifest",
                  textAlign: TextAlign.center,
                  style: textStyle12),
              const SizedBox(height: 20),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Purchase order name", style: textStyle10)),
              const SizedBox(height: 10),
              ReusableContainer(
                height: height * 0.08,
                color: AppColors.whiteColor,
                child: Center(
                  child: MyTextFormField(
                    icon: null,
                    controller: _poNameController,
                    suffixicon: null,
                    myObscureText: false,
                    hinttext: 'Enter Purchase order name',
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Invoices", style: textStyle10)),
              const SizedBox(height: 10),
              ReusableContainer(
                height: height * 0.08
                ,
                color: AppColors.appColor,
                child: CustomTile(
                  tileColor: null,
                  trailingIcon: true,
                  actionIcon: Icons.arrow_forward_ios,
                  color: AppColors.whiteColor,
                  leadingIcon: null,
                  textStyle: textStyle04,
                  title: "Invoice 1",
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 10),
              ReusableContainer(
                height: height * 0.08,
                color: AppColors.appColor,
                child: CustomTile(
                  tileColor: null,
                  trailingIcon: true,
                  actionIcon: Icons.add,
                  color: AppColors.whiteColor,
                  leadingIcon: null,
                  textStyle: textStyle04,
                  title: "Add new invoice",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddInvoice()));
                  },
                ),
              ),
            ],
          ),
        ),
      ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddInvoice()));
        },
        backgroundColor: AppColors.appColor,
        foregroundColor: AppColors.whiteColor,
        child: const Icon(
          Icons.receipt,
          size: 24,
        ),
      ),
    );
  }
}
