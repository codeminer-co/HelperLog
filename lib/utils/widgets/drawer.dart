import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/drawer_list.dart';
import 'package:helperlog/view/setting_screen.dart';
import 'package:helperlog/view/tracking_screen.dart';
import 'package:helperlog/view/view_tracked_doc.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    builder: (BuildContext context) => const ViewTrackedDoc(docAgent: 'Doc Agent', docRunner: 'Doc Runner', docId: '4564',)));
              }),

          DrawerList(
              title: "Track Shipment",
              icon: Icons.track_changes,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const TrackingScreen()));
              }),

          DrawerList(
              title: "Logout",
              icon: Icons.logout,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const TrackingScreen()));
              }),

          // const Divider(),
        ],
      ),
    );
  }
}
