
import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/view/tracking_screen.dart';

class TrackManifestButton extends StatelessWidget {
  const TrackManifestButton({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap:() {Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TrackingScreen(
                                        
                                      )));},
      child: ReusableContainer(color:AppColors.greyColorShade01,
        height: height * 0.22,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text("Track Manifest", style: textStyle10),
                const Expanded(
                  child: Align(
                      alignment: FractionalOffset.center,
                      child: Text("You can track any manifest by providing id",
                          style: textStyle05)),
                ),
                const Expanded(
                  child: Align(
                      alignment: FractionalOffset.bottomRight,
                      child: Icon(Icons.fire_truck,
                            color: AppColors.appColor),),
                )
              ]),
        ),
      ),
    );
  }
}
