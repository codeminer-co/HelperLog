import 'package:bloc/bloc.dart';
import 'package:helperlog/models/user_model.dart';
import 'package:helperlog/services/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  AuthRepository _authRepository = new AuthRepository();

  Future<UserModel?> login(Map data) async {
    try {
      var userModel = await _authRepository.login(data);
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }
}
