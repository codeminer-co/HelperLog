part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class ErrorState extends AuthState {
  String? errorMessage;
  ErrorState({this.errorMessage});
}
