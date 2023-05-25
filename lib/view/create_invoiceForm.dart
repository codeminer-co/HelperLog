import 'package:flutter/material.dart';
import 'package:helperlog/services/repo.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';

class AddInvoice extends StatefulWidget {
 
 AddInvoice({super.key});

  @override
  State<AddInvoice> createState() => _AddInvoiceState();
}

class _AddInvoiceState extends State<AddInvoice> {
   final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// Repo _repo = Repo();
List<Widget> textFields = [];


 
  void addTextField() {
    if (textFields.length < 5) {
      setState(() {
        textFields.add(buildTextFieldRow());
      });
    }
  }

  void removeTextField(int index) {
    if (index >= 0 && index < textFields.length) {
      setState(() {
        textFields.removeAt(index);
      });
    }
  }

  Widget buildTextFieldRow() {
    TextEditingController controller = TextEditingController();

    return Row(
      children: [
        Expanded(
          child: ReusableContainer(
            //  padding: EdgeInsets.symmetric(vertical: 8.0),
            height: null,
            child: MyTextFormField(controller: null, decColor: null, hinttext: 'Enter Text', icon: null, myObscureText:false, onChanged: (String ) {  }, suffixicon: null,
           
            //  controller: _orderNumberController,
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => removeTextField(textFields.length - 1),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CustomAppBar(
          popup: null,
          backgroundColor: AppColors.appColor,
          text: 'Add Invoice Details',
          textColor: AppColors.whiteColor,
          icon: null,
          iconColor: null,
          onPressed: () {},
        ),),
        body: ListView(children: [

  Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: ReusableContainer( height:null,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 
              
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // const Text(
                        //   'Email',
                        //   style: textStyle03,
                        // ),
                       
                        MyTextFormField(
                           decColor: AppColors.greyColorShade,
                          icon: null,
                          controller: _titleController,
                          suffixicon: null,
                          myObscureText: false, hinttext: 'Invoice Title', onChanged: (value) {  },
                        ),

                        
                        const SizedBox(
                          height: 10,
                        ),
                          MyTextFormField(
                           decColor: AppColors.greyColorShade,
                          icon: null,
                          controller: _dateController,
                          suffixicon: null,
                          myObscureText: false, hinttext: 'Pick date', onChanged: (value) {  },
                        ),
                        
                        const SizedBox(
                          height: 10,
                        ),
                    
                      
                    
                    
                        const SizedBox(
                          height: 15,
                        ),
                                             CustomButton(
                                              color:AppColors.appColor,
                          text: 'Add Custom Fields',
                         onPressed: addTextField,
                         
                         
                          textColor: textStyle04,
                        ), const SizedBox(
                                                          height: 16.0),
                                                      SingleChildScrollView(
                                                        child: ListView.builder(
                                                          shrinkWrap: true,
                                                          itemCount:
                                                              textFields.length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return textFields[
                                                                index];
                                                          },
                                                        ),
                                                      ),
                        const SizedBox(
                          height: 15,
                        ),
                        // InkWell(
                        //   onTap: () {
                        //       Navigator.pushReplacement(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => RegisterScreen()));
                        //   },
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     crossAxisAlignment:
                        //         CrossAxisAlignment.center,
                        //     children: [
                        //       Text(
                        //         "You don't have an account?",
                        //         style: textStyle06,
                        //       ),
                        //       Text(
                        //         "Sign up",
                        //         style: textStyle05,
                        //       )
                        //     ],
                        //   ),
                        // ),
                         CustomButton(
                                              color:AppColors.yellowColorshade,
                          text: 'Save',
                          onPressed: (){
                             
                                Navigator.pop(context);
 
                          }, textColor: textStyle04,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

    ],));
  
    
  }
}