import 'package:flutter/material.dart';

import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';

class AddPurchase extends StatefulWidget {
  const AddPurchase({super.key});

  @override
  State<AddPurchase> createState() => _AddPurchaseState();
}

class _AddPurchaseState extends State<AddPurchase> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool orderSubmit = false;

  final TextEditingController _orderNumberController = TextEditingController();
  final TextEditingController _purchaseTitleController =
      TextEditingController();
  final TextEditingController _supplyNumberController = TextEditingController();
  final TextEditingController _billingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: CustomAppBar(
            popup: null,
            backgroundColor: AppColors.appColor,
            text: 'Add Purchase Details',
            textColor: AppColors.whiteColor,
            icon: null,
            iconColor: null,
            onPressed: () {},
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: ReusableContainer(
                height: null,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // const Text(
                          //   'Email',
                          //   style: textStyle03,
                          // ),

                          MyTextFormField(
                            decColor: AppColors.greyColorShade,
                            icon: null,
                            controller: _purchaseTitleController,
                            suffixicon: null,
                            myObscureText: false,
                            hinttext: 'Purchase Title',
                            onChanged: (value) {},
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          MyTextFormField(
                            decColor: AppColors.greyColorShade,
                            icon: null,
                            controller: _orderNumberController,
                            suffixicon: null,
                            myObscureText: false,
                            hinttext: 'Order no ',
                            onChanged: (value) {},
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          MyTextFormField(
                            decColor: AppColors.greyColorShade,
                            icon: null,
                            controller: _supplyNumberController,
                            suffixicon: null,
                            myObscureText: false,
                            hinttext: 'Supplier no',
                            onChanged: (value) {},
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          MyTextFormField(
                            decColor: AppColors.greyColorShade,
                            icon: null,
                            controller: _billingController,
                            suffixicon: null,
                            myObscureText: false,
                            hinttext: 'Billing info',
                            onChanged: (value) {},
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          const SizedBox(
                            height: 15,
                          ),
                          CustomButton(
                            color: AppColors.appColor,
                            text: 'Save',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            textColor: textStyle04,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
