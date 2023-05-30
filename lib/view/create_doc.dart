import 'package:flutter/material.dart';

import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';

import 'package:helperlog/utils/widgets/textformfield.dart';
import 'package:helperlog/utils/widgets/view_purchase.dart';

import 'package:helperlog/view/create_purchaseForm.dart';

class CreateDoc extends StatefulWidget {
  const CreateDoc({super.key});

  @override
  State<CreateDoc> createState() => _CreateDocState();
}

class _CreateDocState extends State<CreateDoc> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  bool orderSubmit = false;
  String? _agent;
  final TextEditingController _typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CustomAppBar(
          popup: null,
          backgroundColor: AppColors.appColor,
          text: 'Manifest',
          textColor: AppColors.whiteColor,
          icon: null,
          iconColor: null,
          onPressed: () {},
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Column(
              children: [
                MyTextFormField(
                    controller: _titleController,
                    hinttext: 'Title',
                    icon: Icons.title,
                    suffixicon: null,
                    onChanged: (value) {},
                    myObscureText: false,
                    decColor: AppColors.whiteColor),
                const SizedBox(height: 10),
                MyTextFormField(
                  controller: _locationController,
                  hinttext: 'Starting location',
                  icon: Icons.add_location,
                  suffixicon: null,
                  onChanged: (value) {},
                  myObscureText: false,
                  decColor: AppColors.whiteColor,
                ),
                const SizedBox(height: 10),
                MyTextFormField(
                  controller: _typeController,
                  hinttext: 'Type',
                  icon: Icons.directions,
                  suffixicon: null,
                  onChanged: (value) {},
                  myObscureText: false,
                  decColor: AppColors.whiteColor,
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButtonFormField<String>(
                    value: _agent,
                    decoration: const InputDecoration(
                      hintText: 'Agent',
                      hintStyle: TextStyle(color: AppColors.appColor),
                      contentPadding: EdgeInsets.fromLTRB(16, 12, 10, 12),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                    ),
                    items: ['john', 'mili', 'aalik']
                        .map((gender) => DropdownMenuItem<String>(
                              value: gender,
                              child: Text(
                                gender,
                                style:
                                    const TextStyle(color: AppColors.appColor),
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _agent = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                MyTextFormField(
                  controller: _typeController,
                  hinttext: 'Attach',
                  icon: Icons.attach_file,
                  suffixicon: null,
                  onChanged: (value) {},
                  myObscureText: false,
                  decColor: AppColors.whiteColor,
                ),
                const SizedBox(height: 10),
//                         Row(children: [

                CustomButton(
                    text: 'Add Purchase',
                    textColor: textStyle03,
                    color: AppColors.yellowColorshade,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddPurchase()));

                      setState(() {
                        orderSubmit = true;
                      });
                    }),
                const SizedBox(height: 10),
                orderSubmit ? const ViewPurchaseInserted() : const SizedBox(),

//  const SizedBox(width: 10),

//                           CustomButton(
//                               text: 'Add Invoice',
//                               textColor: textStyle03,
//                               color: AppColors.yellowColorshade,
//                               onPressed: () {}),

//                         ],)
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 20),
                  child: CustomButton(
                      text: 'Submit',
                      textColor: textStyle03,
                      color: AppColors.yellowColorshade,
                      onPressed: () {
                        setState(() {
                          orderSubmit = false;
                        });
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
