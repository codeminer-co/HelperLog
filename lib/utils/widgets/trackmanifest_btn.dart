
import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';

class TrackManifestButton extends StatelessWidget {
  const TrackManifestButton({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ReusableContainer(color:AppColors.greyColorShade01,
      height: height * 0.23,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                Expanded(
                  child: Align(
                      alignment: FractionalOffset.bottomRight,
                      child: IconButton(
                        icon: const Icon(Icons.fire_truck,
                            color: AppColors.appColor),
                        onPressed: () {},
                      )),
                )
              ]),
        ),
      ),
    );
  }
}
