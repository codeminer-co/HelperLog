import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/view/doc_detail.dart';

class ViewDoc extends StatefulWidget {
  const ViewDoc({super.key});

  @override
  State<ViewDoc> createState() => _ViewDocState();
}

class _ViewDocState extends State<ViewDoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: CustomAppBar(
            popup: null,
            icon: null,
            iconColor: null,
            onPressed: () {},
            backgroundColor: AppColors.appColor,
            text: 'View Document',
            textColor: AppColors.whiteColor,
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Flexible(
              child: ListView.builder(
                itemCount: 10, // Number of ListTiles
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10), // Adjust padding as needed
                    child: ReusableContainer(
                      height: null,
                      child: ListTile(
                        title: const Text("File 1", style: textStyle03),
                        subtitle: const Text("20/05/2023"),
                        leading: const Icon(Icons.file_copy_rounded,
                            color: AppColors.appColor),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          color: AppColors.appColor,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DocDetail()));
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
