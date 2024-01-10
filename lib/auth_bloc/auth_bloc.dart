import 'package:fkutter_bloc_example_auth/auth_bloc/auth_event.dart';
import 'package:fkutter_bloc_example_auth/auth_bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 5));
      emit(AuthSuccess(name: "Kalingga"));
    });

    on<LogoutEvent>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 5));
      emit(AuthInitial());
    });
  }
}
