part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthCubitInitial extends AuthState {}

final class LoginSuccess extends AuthState {}

final class LoginLoading extends AuthState {}

final class LoginFailure extends AuthState {
  String errMessage;

  LoginFailure({required this.errMessage});
}

final class RegisterInitial extends AuthState {}

final class RegisterLoading extends AuthState {}

final class RegisterSuccess extends AuthState {}

final class RegisterFailure extends AuthState {
  String errMessage;

  RegisterFailure({required this.errMessage});
}
