import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/view/tracking_screen.dart';

class ViewTrackedDoc extends StatelessWidget {
  final String docId;
  final String docAgent;
  final String docRunner;
  const ViewTrackedDoc(
      {super.key,
      required this.docId,
      required this.docAgent,
      required this.docRunner});

  @override
  Widget build(BuildContext context) {
   double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: CustomAppBar(
          appBarHeight: 80,
          actionIcons: Icons.person,
          leadingIcon: Icons.menu,
          onPressedLeadIcon: () {},
          onPressedActionIcon: () {},
          title: "" ,
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
                            Text("Document id", style: textStyle11),
                            Text(docId, style: textStyle11),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Document Agent", style: textStyle11),
                            Text(docAgent, style: textStyle11),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Document Runner", style: textStyle11),
                            Text(docRunner, style: textStyle11),
                          ],
                        ),
                      ],
                    )),
             Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Document Details:", style: textStyle10)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: CustomButton(
                    height:height * 0.1,
                      color: AppColors.appColor,
                      onPressed: () {},
                      text: 'Purchase order 1',
                      textColor: textStyle09),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: CustomButton(   height:height * 0.1,
                      color: AppColors.appColor,
                      onPressed: () {},
                      text: 'Purchase order 2',
                      textColor: textStyle09),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: CustomButton(   height:height * 0.1,
                      color: AppColors.appColor,
                      onPressed: () { Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>TrackingScreen()));},
                      text: 'Purchase order 3',
                      textColor: textStyle09),
                )
              ],
            ),
          ),
        ));
  }
}
