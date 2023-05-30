import 'package:flutter/material.dart';

import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';

class AddInvoice extends StatefulWidget {
  const AddInvoice({super.key});

  @override
  State<AddInvoice> createState() => _AddInvoiceState();
}

class _AddInvoiceState extends State<AddInvoice> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// Repo _repo = Repo();
  List<Widget> textFields = [];

  void addTextField() {
    if (textFields.length < 5) {
      setState(() {
        textFields.add(buildTextFieldRow());
      });
    }
  }

  void removeTextField(int index) {
    if (index >= 0 && index < textFields.length) {
      setState(() {
        textFields.removeAt(index);
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text =
            picked.toString(); // You can format the date here
      });
    }
  }

  Widget buildTextFieldRow() {
    TextEditingController controller = TextEditingController();

    return Column(
      children: [
        MyTextFormField(
          controller: null, decColor: AppColors.greyColorShade,
          hinttext: 'Enter Text', icon: null, myObscureText: false,
          onChanged: (String) {},
          suffixicon: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => removeTextField(textFields.length - 1),
          ),

          //  controller: _orderNumberController,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: CustomAppBar(
            popup: null,
            backgroundColor: AppColors.appColor,
            text: 'Add Invoice Details',
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
                            controller: _titleController,
                            suffixicon: null,
                            myObscureText: false,
                            hinttext: 'Invoice Title',
                            onChanged: (value) {},
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          MyTextFormField(
                            decColor: AppColors.greyColorShade,
                            icon: null,
                            controller: _dateController,
                            suffixicon: IconButton(
                              icon: Icon(Icons.add_alarm),
                              onPressed: () => _selectDate(context),
                            ),
                            myObscureText: false,
                            hinttext: 'Pick date',
                            onChanged: (value) {},
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: textFields.length,
                              itemBuilder: (context, index) {
                                return textFields[index];
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomButton(
                            color: AppColors.appColor,
                            text: 'Add Custom Fields',
                            onPressed: addTextField,
                            textColor: textStyle04,
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          CustomButton(
                            color: AppColors.appColor,
                            text: 'Save',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            textColor: textStyle04,
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
