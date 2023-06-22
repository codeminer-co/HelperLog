import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helperlog/auth_cubit/auth_cubit.dart';
import 'package:helperlog/models/user_model.dart';

class ViewModelMVVM extends StatefulWidget {
  const ViewModelMVVM({super.key});

  @override
  State<ViewModelMVVM> createState() => _ViewModelMVVMState();
}

class _ViewModelMVVMState extends State<ViewModelMVVM> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Text("Arshman Afzal");
      },
    );
  }
}
