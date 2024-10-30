import 'package:bloc/bloc.dart';
import 'package:flutter_complete_project/feature/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/feature/login/data/models/repos/login_repo.dart';
import 'package:flutter_complete_project/feature/login/logic/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(loginRequestBody);
    response.when(success: (loginRespones) {
      emit(LoginState.success(loginRespones));
    }, failure: (error) {
      emit(LoginState.error(error: error));
    });
  }
}
