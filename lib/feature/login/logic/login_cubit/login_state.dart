import 'package:flutter_complete_project/feature/login/data/models/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "login_state.freezed.dart";

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(LoginResponse loginResponse) = Success<T>;
  const factory LoginState.error({required String error}) = Error;
}
