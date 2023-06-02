import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_tile.dart';
import 'package:helperlog/utils/widgets/customhome_btns.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/trackmanifest_btn.dart';
import 'package:helperlog/view/view_tracked_doc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            title: "Welcome, Agent"),
        // appBar:AppBar(),
        // drawer: const MyDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(
                          child: CustomHomeButtons(
                              color: AppColors.appColor,
                              title: 'Total Runners',
                              value: '12')),
                      SizedBox(width: 10),
                      Expanded(
                          child: CustomHomeButtons(
                              color: AppColors.orangeShadeColor,
                              title: 'Total Manisfest',
                              value: '12')),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Expanded(
                          child: CustomHomeButtons(
                              color: AppColors.orangeShadeColor,
                              title: 'Active Runners',
                              value: '12')),
                      SizedBox(width: 10),
                      Expanded(
                          child: CustomHomeButtons(
                              color: AppColors.appColor,
                              title: 'Total Manifest',
                              value: '12')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const TrackManifestButton(),
                  const SizedBox(height: 20),
                  ReusableContainer(
                    color: AppColors.greyColorShade01,
                    height: height * 0.13,
                    child: Center(
                      child: CustomTile(
                        tileColor: null,
                        trailingIcon: true,
                        color: AppColors.appColor,
                        leadingIcon: null,
                        textStyle: textStyle05,
                        actionIcon: Icons.keyboard_arrow_down_outlined,
                        title: "View All Runners",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ViewTrackedDoc(
                                        docAgent: 'Agent 1',
                                        docRunner: 'Runner 1',
                                        docId: 'Runner 1',
                                      )));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
