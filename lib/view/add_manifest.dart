import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_tile.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';
import 'package:helperlog/view/add_purchase_order.dart';
import 'package:helperlog/view/view_tracked_doc.dart';

class AddManifest extends StatefulWidget {
  const AddManifest({super.key});

  @override
  State<AddManifest> createState() => _AddManifestState();
}

class _AddManifestState extends State<AddManifest> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(
        appBarHeight: 80,
        actionIcons: Icons.person,
        leadingIcon: Icons.menu,
        onPressedLeadIcon: () {},
        onPressedActionIcon: () {},
        title: "",
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                "Add Manifest",
                style: textStyle14,
              ),
              const SizedBox(height: 20),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Manifest name", style: textStyle10)),
              const SizedBox(height: 10),
              MyTextFormField(
                decColor: AppColors.greyColorShade,
                icon: null,
                controller: null,
                suffixicon: null,
                myObscureText: false,
                hinttext: 'Enter Manifest name',
                onChanged: (value) {},
              ),
              const SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Runner", style: textStyle10)),
              const SizedBox(height: 10),
              ReusableContainer(
                height: height * 0.1,
                color: AppColors.appColor,
                child: CustomTile(
                  tileColor: null,
                  trailingIcon: true,
                  actionIcon: Icons.arrow_drop_down,
                  color: AppColors.whiteColor,
                  leadingIcon: null,
                  textStyle: textStyle09,
                  title: "Select Runner",
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Purchase orders", style: textStyle10)),
              const SizedBox(height: 10),
              ReusableContainer(
                height: height * 0.1,
                color: AppColors.appColor,
                child: CustomTile(
                  tileColor: null,
                  trailingIcon: false,
                  actionIcon: null,
                  color: AppColors.whiteColor,
                  leadingIcon: null,
                  textStyle: textStyle09,
                  title: "First Item",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddPurchaseOrder()));
        },
        backgroundColor: AppColors.orangeShadeColor,
        foregroundColor: AppColors.whiteColor,
        child: Icon(Icons.add, size: 24),
      ),
    );
  }
}
