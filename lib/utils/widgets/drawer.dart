import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/drawer_list.dart';
import 'package:helperlog/view/settings.dart';
import 'package:helperlog/view/tracking_screen.dart';
import 'package:helperlog/view/view_doc.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text(
              "HelperLog",
              style: textStyle07,
            ),
            accountEmail: Text(
              "helper@gmail.com",
              style: textStyle04,
            ),
            decoration: BoxDecoration(
              color: AppColors.appColor,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: AppColors.whiteColor,
            ),
          ),
          DrawerList(
              title: "Settings",
              icon: Icons.settings,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Settings()));
              }),

          DrawerList(
              title: "View File",
              icon: Icons.file_copy,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ViewDoc()));
              }),

          DrawerList(
              title: "Track Shipment",
              icon: Icons.track_changes,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TrackingScreen()));
              }),

          DrawerList(
              title: "Logout",
              icon: Icons.logout,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TrackingScreen()));
              }),

          // const Divider(),
        ],
      ),
    );
  }
}
