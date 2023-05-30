import 'package:flutter/material.dart';
import 'package:helperlog/models/purchaseOrderModel.dart';

class PurchaseOrderData {
 
  Future<List<List<String>>> getPurchases() async {
    try {
      await Future.delayed(Duration(microseconds: 30));
      List<List<String>> purchase= [["Order A", "20","12","34"],["Order B", "20","12","34"]];
      return purchase;
    } catch (e) {
      rethrow;
    }
  }
}
