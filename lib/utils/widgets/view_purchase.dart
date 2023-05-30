
import 'package:flutter/material.dart';
import 'package:helperlog/models/purchaseOrderModel.dart';
import 'package:helperlog/services/repo.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/view/create_invoiceForm.dart';
import 'package:helperlog/view/create_purchaseForm.dart';

class ViewPurchaseInserted extends StatefulWidget {
  const ViewPurchaseInserted({super.key});


 

  @override
  State<ViewPurchaseInserted> createState() => _ViewPurchaseInsertedState();
}

class _ViewPurchaseInsertedState extends State<ViewPurchaseInserted> {
   PurchaseOrderData repo =PurchaseOrderData();

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
                        children: [
                          ReusableContainer(
                            height: height * 0.2,
                            child: FutureBuilder<List<List<String>>>(
      future: repo.getPurchases(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<List<String>> purchases = snapshot.data!;
          return ListView.builder(
            itemCount: purchases.length,
            itemBuilder: (context, index) {
              List<String> purchase = purchases[index];
              return ListTile(
                title: Text(purchase[0]), // Order title
                subtitle: Text(purchase[1]), // Other details
                trailing: IconButton(onPressed: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>   AddInvoice()));
},icon: Icon(Icons.add_circle_outline,color:AppColors.appColor),)
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return CircularProgressIndicator();
        }
      },
    )
                                          // showDialog(
                                          //   context: context,
                                          //   builder: (BuildContext context) {
                                          //     return AlertDialog(
                                          //       //  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                                          //       title: const Text(
                                          //           'Enter Invoices Details'),
                                          //       content: SingleChildScrollView(
                                          //         child: Column(
                                          //           mainAxisSize:
                                          //               MainAxisSize.min,
                                          //           children: [
                                          //             const SizedBox(
                                          //                 height: 16.0),
                                          //             ElevatedButton(
                                          //               onPressed: addTextField,
                                          //               child: const Text(
                                          //                   'Add Custom Field'),
                                          //             ),
                                          //             const SizedBox(
                                          //                 height: 16.0),
                                          //             SingleChildScrollView(
                                          //               child: ListView.builder(
                                          //                 shrinkWrap: true,
                                          //                 itemCount:
                                          //                     textFields.length,
                                          //                 itemBuilder:
                                          //                     (context, index) {
                                          //                   return textFields[
                                          //                       index];
                                          //                 },
                                          //               ),
                                          //             ),
                                          //           ],
                                          //         ),
                                          //       ),
                                          //       actions: [
                                          //         Center(
                                          //           child: Row(
                                          //             mainAxisAlignment:
                                          //                 MainAxisAlignment
                                          //                     .center,
                                          //             children: [
                                          //               ButtonBar(
                                          //                 children: [
                                          //                   ElevatedButton(
                                          //                     onPressed: () {
                                          //                       Navigator.of(
                                          //                               context)
                                          //                           .pop(); // Close the dialog
                                          //                     },
                                          //                     child: const Text(
                                          //                         'Cancel'),
                                          //                   ),
                                          //                   ElevatedButton(
                                          //                     onPressed: () {
                                          //                       Navigator.of(
                                          //                               context)
                                          //                           .pop();
                                          //                     },
                                          //                     child: const Text(
                                          //                         'Save'),
                                          //                   ),
                                          //                 ],
                                          //               ),
                                          //             ],
                                          //           ),
                                          //         ),
                                          //       ],
                                          //     );
                                          //   },
                                         // );
                              
                           // child:Text("kk")
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                                onTap: () {
Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>   AddPurchase()));

                            
                                },
                                child: const Text("Add more purchases",
                                    style: textStyle04)),
                          )
                        ],
                      );
  }
}

