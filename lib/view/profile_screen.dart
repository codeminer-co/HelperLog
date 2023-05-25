import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/drawer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    
  Scaffold(
   appBar:PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: CustomAppBar(
             popup: null,
            icon: null, iconColor: null, onPressed: () {  },backgroundColor: AppColors.appColor, text: 'Profile', textColor:AppColors.whiteColor, ),
        ),drawer:MyDrawer(),
    );
  }
}