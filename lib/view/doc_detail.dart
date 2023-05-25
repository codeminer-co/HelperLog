import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/view/bottom_navigation.dart';

import '../utils/widgets/custom_button.dart';

class DocDetail extends StatefulWidget {
  const DocDetail({super.key});

  @override
  State<DocDetail> createState() => _DocDetailState();
}

class _DocDetailState extends State<DocDetail> {
  int currentStep = 0;
  bool isOrderDispatched = false;
  bool isOrderDelivered = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: CustomAppBar(
            icon: null,
            iconColor: null,
            onPressed: () {},
            popup: null,
            backgroundColor: AppColors.appColor,
            text: 'Detail',
            textColor: AppColors.whiteColor,
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Stack(children: [
                Container(
                  height: height * 0.1,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color: AppColors.appColor),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: ReusableContainer(
                    height: height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("File1", style: textStyle02),
                              Icon(Icons.file_download)
                            ]),
                        Text("20/05/2023", style: textStyle06),
                        SizedBox(height: 5),
                        Text("Assigned Agent", style: textStyle03),
                        SizedBox(height: 5),
                        Text("Status", style: textStyle03),
                        Expanded(
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("All the details here",
                                  style: textStyle03)),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ReusableContainer(
                height: null,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Shipment Details", style: textStyle02),
                      Stepper(
                        currentStep:
                            isOrderDelivered ? 2 : (isOrderDispatched ? 1 : 0),
                        steps: [
                          Step(
                            title: Text('Order Placed'),
                            isActive: true,
                            content: Text('Your order has been placed.'),
                          ),
                          Step(
                            title: Text('Order Dispatched'),
                            isActive: isOrderDispatched,
                            content: Text('Your order has been dispatched.'),
                          ),
                          Step(
                            title: Text('Order Delivered'),
                            isActive: isOrderDelivered,
                            content: Text('Your order has been delivered.'),
                          ),
                        ],
                        controlsBuilder:
                            (BuildContext context, ControlsDetails controls) {
                          return SizedBox.shrink();
                        },
                      )
                    ]),
              ),
            ),

            // floatingActionButton: FloatingActionButton(
            //   child: Icon(Icons.update),
            //   onPressed: () {
            //     setState(() {
            //       if (!isOrderDispatched) {
            //         isOrderDispatched = true;
            //       } else if (!isOrderDelivered) {
            //         isOrderDelivered = true;
            //       }
            //     });
            //   },
            // ),
          ],
        ));
  }
}
