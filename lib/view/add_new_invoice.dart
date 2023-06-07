import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';

class AddNewInvoice extends StatefulWidget {
  const AddNewInvoice({super.key});

  @override
  State<AddNewInvoice> createState() => _AddNewInvoiceState();
}

class _AddNewInvoiceState extends State<AddNewInvoice> {
  List<Widget> textFields = [];
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
            child: Column(children: [
              showTextFields(),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                color: AppColors.appColor,
                text: 'Add Custom Fields',
                onPressed: addTextField,
                textColor: textStyle04,
                height: height * 0.1,
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void addTextField() {
    if (textFields.length < 5) {
      setState(() {
        textFields.add(buildTextFieldRow());
      });
    }
  }

  showTextFields() {
    return SingleChildScrollView(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: textFields.length,
          itemBuilder: (context, index) {
            return textFields[index];
          }),
    );
  }

  Widget buildTextFieldRow() {
    double height = MediaQuery.of(context).size.height;
    TextEditingController controller = TextEditingController();

    return Column(
      children: [
        ReusableContainer(color: AppColors.whiteColor, height:height * 0.1,
          child: Center(
            child: MyTextFormField(
              controller: controller,
              hinttext: 'Enter Text', icon: null, myObscureText: false,
              onChanged: (value) {},
              suffixicon: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => removeTextField(textFields.length - 1),
              ),
                  
              //  controller: _orderNumberController,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  removeTextField(int index) {
    if (index >= 0 && index < textFields.length) {
      setState(() {
        textFields.removeAt(index);
      });
    }
  }
}
