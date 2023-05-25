import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/view/create_doc.dart';
import 'package:helperlog/view/view_doc.dart';
class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.33,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1.4,
        children: [
          buildGridElement(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateDoc()),
            );
          }, "Create document", "Fill all documents"),
         buildGridElement(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewDoc()),
            );
          }, "View document ", "View documents"),
        ],
      ),
    );
  }
}

Padding buildGridElement(VoidCallback onPressed,String text ,String subtext, ) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: ReusableContainer(
      height: null,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                icon: const Icon(Icons.file_copy, color: AppColors.appColor),
                onPressed: onPressed),
            //const SizedBox(height:10),
            Text(
              text,
              style: textStyle03,
            ),
            //  const SizedBox(height:5),
            Text(
              subtext,
              style: textStyle06,
            ),
          ],
        ),
      ),
    ),
  );
}
