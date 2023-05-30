import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/stack_widget.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool stepTest = false;
  int currentStep = 0;
  bool isOrderDispatched = false;
  bool isOrderDelivered = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: CustomAppBar(
            popup: null,
            icon: null,
            iconColor: null,
            onPressed: () {},
            backgroundColor: AppColors.appColor,
            text: 'Tracking',
            textColor: AppColors.whiteColor,
          ),
        ),
        //drawer: const Drawer(),
        body: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StackWidget(
                        height: height,
                        image: Image.asset(
                          'assets/images/img_1.png',
                        ),
                        text: "Tracking Here",
                        subtext: "you have new updates"),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.greyColorShade,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: "e.g #3428374836",
                            hintStyle: textStyle06,
                            suffixIcon: const Icon(Icons.filter_list,
                                color: AppColors.appColor),
                            enabledBorder: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            prefixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    stepTest = true;
                                  });
                                },
                                child: const Icon(Icons.search,
                                    color: AppColors.appColor)),
                          ),
                        ),
                      ),
                    ),
                    stepTest
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text("Tracking your document",
                                  style: textStyle02),
                              IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  setState(() {
                                    stepTest = false;
                                  });
                                },
                              ),
                            ],
                          )
                        : const SizedBox(),
                    stepTest
                        ? Stepper(
                            currentStep: isOrderDelivered
                                ? 2
                                : (isOrderDispatched ? 1 : 0),
                            steps: [
                              const Step(
                                title: Text('Order Placed'),
                                isActive: true,
                                content: Text('Your order has been placed.'),
                              ),
                              Step(
                                title: const Text('Order Dispatched'),
                                isActive: isOrderDispatched,
                                content: const Text(
                                    'Your order has been dispatched.'),
                              ),
                              Step(
                                title: const Text('Order Delivered'),
                                isActive: isOrderDelivered,
                                content: const Text(
                                    'Your order has been delivered.'),
                              ),
                            ],
                            controlsBuilder: (BuildContext context,
                                ControlsDetails controls) {
                              return const SizedBox.shrink();
                            },
                          )
                        : const SizedBox(),
                  ],
                )),
          ],
        ));
  }
}
