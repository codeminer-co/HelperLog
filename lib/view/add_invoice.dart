import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_tile.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';
import 'package:helperlog/view/add_new_invoice.dart';


class AddInvoice extends StatefulWidget {
  const AddInvoice({super.key});

  @override
  State<AddInvoice> createState() => _AddInvoiceState();
}

class _AddInvoiceState extends State<AddInvoice> {
   final TextEditingController _invoiceNoController = TextEditingController();
final TextEditingController _quantityController = TextEditingController();
final TextEditingController _dateController = TextEditingController();
final TextEditingController _dueDateController = TextEditingController();
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
     if (picked != null) {
      setState(() {
        _dueDateController.text =
            picked.toString(); // You can format the date here
      });
    }
  }

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
                "Add New Invoice",
                style: textStyle14,
              ),
              const SizedBox(height: 20),
              Text("Fill the following details and invoice ",
                  textAlign: TextAlign.center, style: textStyle12),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ReusableContainer(
                          height: height * 0.08,
                          color: AppColors.whiteColor,
                          child: Center(
                            child: MyTextFormField(
                            
                              icon: null,
                              controller:_invoiceNoController,
                              suffixicon: null,
                              myObscureText: false,
                              hinttext: 'Invoice number',
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ReusableContainer(
                          height: height * 0.08,
                         color: AppColors.whiteColor,
                          child: Center(
                            child: MyTextFormField(
                              
                              icon: null,
                              controller: _dateController,
                              suffixicon: IconButton(
                                icon: const Icon(Icons.add_alarm),
                                onPressed: () => _selectDate(context),
                              ),
                              myObscureText: false,
                             hinttext: 'Date',
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        ReusableContainer(
                          height: height * 0.08,
                          color: AppColors.whiteColor,
                          child: Center(
                            child: MyTextFormField(
                              
                              icon: null,
                              controller:_quantityController,
                              suffixicon: null,
                              myObscureText: false,
                              hinttext: 'Quantity',
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                         ReusableContainer(
                          height: height * 0.08,
                         color: AppColors.whiteColor,
                          child: Center(
                            child: MyTextFormField(
                              
                              icon: null,
                              controller: _dueDateController,
                              suffixicon: IconButton(
                                icon: const Icon(Icons.add_alarm),
                                onPressed: () => _selectDate(context),
                              ),
                              myObscureText: false,
                             hinttext: 'Due Date',
                              onChanged: (value) {},
                            ),
                          ),
                        ),  
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
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
                            builder: (context) => const AddNewInvoice()));
                  },
                ),
              ),
            ],
          ),
        ),
      ))),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () { Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                           builder: (context) => AddInvoice())); }, backgroundColor: AppColors.orangeShadeColor,
      //     foregroundColor: AppColors.whiteColor,
      //     child:
      //    Icon(Icons.add, size: 24),

      //   ),
    );
  }
}
