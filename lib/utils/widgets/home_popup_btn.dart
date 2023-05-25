
 import 'package:flutter/material.dart';
import 'package:helperlog/view/create_company.dart';
import 'package:helperlog/view/home_screen.dart';
import 'package:helperlog/view/view_company.dart';

PopupMenuButton<MenuAction> buildPopupBtn(BuildContext context){
  return PopupMenuButton<MenuAction>(
  onSelected:(value){
print(value);
  },
  
  itemBuilder: (context){
  return [
   PopupMenuItem<MenuAction>(value:MenuAction.create, child:GestureDetector(
      
      onTap:(){
Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>const CreateCompany()));
      },
      child: const Text("Create"))),
    PopupMenuItem<MenuAction>(value:MenuAction.edit, child:GestureDetector(
      
      onTap:(){Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>const CompanyProfile()));},
      child: const Text("View"))),
     const PopupMenuItem<MenuAction>(value:MenuAction.view, child:Text("Edit")),
  ];
  },
  );
}