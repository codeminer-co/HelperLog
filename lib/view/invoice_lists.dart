import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/view/invoice_details.dart';

class InvoiceLists extends StatefulWidget {
  const InvoiceLists({super.key});

  @override
  State<InvoiceLists> createState() => _InvoiceListsState();
}

class _InvoiceListsState extends State<InvoiceLists> {
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
          appBar: CustomAppBar(
          appBarHeight: 80,
          actionIcons: Icons.person,
          leadingIcon: null,
          onPressedLeadIcon: () {},
          onPressedActionIcon: () {},
          title: "Invoices",
        ),
        body: Padding(
          padding:  const EdgeInsets.fromLTRB(10,20,10,20),
          child: Column(
            children: [
              
              Flexible(
                child: ListView.builder(
                  itemCount: 10, // Number of ListTiles
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10), // Adjust padding as needed
                      child: ReusableContainer(
                        height: height * 0.1,
                        color:AppColors.whiteColor,
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
                                      builder: (context) => InvoiceDetail(date: '08/06/2023', dueDate: '10/09/2024', quantity: '56', invoiceNo: '63',)));
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}