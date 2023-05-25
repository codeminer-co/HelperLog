import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/drawer.dart';
import 'package:helperlog/utils/widgets/grid_widget.dart';
import 'package:helperlog/utils/widgets/home_popup_btn.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/stack_widget.dart';
import 'package:helperlog/view/create_company.dart';
import 'package:helperlog/view/create_doc.dart';
import 'package:helperlog/view/tracking_screen.dart';
import 'package:helperlog/view/view_company.dart';
import 'package:helperlog/view/view_doc.dart';

enum MenuAction { create, view, edit }

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: CustomAppBar(
            backgroundColor: AppColors.appColor,
            text: 'Home',
            textColor: AppColors.whiteColor,
            icon: null,
            iconColor: AppColors.whiteColor,
            onPressed: () {
              //buildDialog( context);print("fff");
              //  buildPopupBtn(context);print("fff");
            },
            popup: buildPopupBtn(context),
          ),
        ),
        // appBar:AppBar(),
        drawer: const MyDrawer(),
        body: ListView(padding: EdgeInsets.zero, children: [
          StackWidget(height: height,image: Image.asset(
                'assets/images/img_1.png',
              ),text:"Hey John",subtext: "you have new updates"),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Tracking", style: textStyle08),
                const SizedBox(height: 10),
                ReusableContainer(
                  height: null,
                  child: ListTile(
                    leading: const Icon(Icons.local_shipping,
                        color: AppColors.appColor),
                    title: const Text("Track Shipment", style: textStyle03),
                    trailing: IconButton(
                      icon: const Icon(Icons.arrow_forward,
                          color: AppColors.appColor),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrackingScreen()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Text("Documents", style: textStyle08),
          ),
          // const SizedBox(height:10),
          GridWidget(height: height)
        ]));
  }
}
