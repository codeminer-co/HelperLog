import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/drawer.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: CustomAppBar( popup: null,icon: null, iconColor: null, onPressed: () {  }, backgroundColor: AppColors.appColor, text: 'Search', textColor:AppColors.whiteColor, ),
        ),drawer:MyDrawer(),
    );
  }
}