import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/drawer.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';

import 'package:helperlog/utils/widgets/textformfield.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        key: globalKey,
        backgroundColor: AppColors.whiteColor,
        appBar: CustomAppBar(
            appBarHeight: 80,
            actionIcons: Icons.person,
            leadingIcon: Icons.menu,
            onPressedLeadIcon: () {
           globalKey.currentState?.openDrawer();
            },
            onPressedActionIcon: () {},
            title: "Welcome, Agent"),
        drawer: const MyDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        "Enter the tracking id of the documents to get the current status of the document.",
                        textAlign: TextAlign.center,
                        style: textStyle12),
                    const SizedBox(height: 40),
                    Text("Enter Tracking id", style: textStyle11),
                    const SizedBox(height: 20),
                    ReusableContainer(
                      height: height * 0.1,
                      color: AppColors.whiteColor,
                      child: Center(
                        child: MyTextFormField(
                          
                          icon: Icons.fire_truck,
                          controller: null,
                          suffixicon: null,
                          myObscureText: false,
                          hinttext: 'Tracking id here',
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      color: AppColors.appColor,
                      onPressed: () {},
                      text: 'Track',
                      textColor: textStyle09,
                      height: height * 0.07,
                    ),
                    const SizedBox(height: 20),
                    Text(
                        "Enter the tracking id of the documents to get the current status of the document.Enter the tracking id of the documents to get the current status of the documentEnter the tracking id of the documents to get the current status of the documentEnter the tracking id of the documents to get the current status of the documentEnter the tracking id of the documents to get the current status of the documentEnter the tracking id of the documents to get the current status of the document",
                        style: textStyle06),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
