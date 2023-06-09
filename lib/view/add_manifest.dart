import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_tile.dart';
import 'package:helperlog/utils/widgets/drawer.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';
import 'package:helperlog/view/add_purchase_order.dart';

class AddManifest extends StatefulWidget {
  const AddManifest({super.key});

  @override
  State<AddManifest> createState() => _AddManifestState();
}

class _AddManifestState extends State<AddManifest> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  final TextEditingController _manifestNameController = TextEditingController();
  String? _runner;
  List items = ['john', 'mili', 'aalik'];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: globalKey,
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
          appBarHeight: 80,
          actionIcons: Icons.person,
          leadingIcon: Icons.menu,
          onPressedLeadIcon: () {
            globalKey.currentState?.openDrawer();
          },
          onPressedActionIcon: () {},
          title: "Welcome, Agent"),
      drawer: const MyDrawer(),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Text(
                "Add Manifest",
                style: textStyle14,
              ),
              const SizedBox(height: 20),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Manifest name", style: textStyle10)),
              const SizedBox(height: 10),
              ReusableContainer(
                height: height * 0.08,
                color: AppColors.whiteColor,
                child: Center(
                  child: MyTextFormField(
                    icon: null,
                    controller: _manifestNameController,
                    suffixicon: null,
                    myObscureText: false,
                    hinttext: 'Enter Manifest name',
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Runner", style: textStyle10)),
              const SizedBox(height: 10),
              ReusableContainer(
                height: height * 0.08,
                color: AppColors.appColor,
                child: Center(
                  child: DropdownButtonFormField<String>(
                    value: _runner,dropdownColor: AppColors.appColor,
                    decoration: const InputDecoration(
                      hintText: 'Select Runner',
                      hintStyle: textStyle04,
                      contentPadding: EdgeInsets.fromLTRB(16, 12, 10, 12),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                    ),
                    items: items
                        .map((runner) => DropdownMenuItem<String>(
                              value: runner,
                              child: Text(
                                runner,
                                style: textStyle04,
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _runner = value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Purchase orders", style: textStyle10)),
              const SizedBox(height: 10),
              ReusableContainer(
                height: height * 0.08,
                color: AppColors.appColor,
                child: CustomTile(
                  tileColor: null,
                  trailingIcon: false,
                  actionIcon: null,
                  color: AppColors.whiteColor,
                  leadingIcon: null,
                  textStyle: textStyle04,
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
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddPurchaseOrder()));
        },
        backgroundColor: AppColors.appColor,
        foregroundColor: AppColors.whiteColor,
        child: const Icon(
          Icons.add_circle_outline,
          size: 24,
        ),
      ),
    );
  }
}
