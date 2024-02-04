import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:repository/repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AuthRepository authRepository,
    required UserRepository userRepository,
  })  : _authRepository = authRepository,
        _userRepository = userRepository,
        super(AuthState.unknown()) {
    on<_AuthStatusChanged>(_onAuthStateChange);
    on<AuthLogoutRequest>(_onAuthLogout);
  }

  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  late StreamSubscription<AuthenticationStatus> _authStreamSubscription;

  @override
  Future<void> close() async {
    await _authStreamSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthStateChange(
    _AuthStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.authenticated:
        final user = await _userRepository.getUser();
        return emit(
          user == null
              ? const AuthState.unauthenticated()
              : AuthState.authenticated(user),
        );
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthState.unauthenticated());
      case AuthenticationStatus.unknown:
        return emit(const AuthState.unknown());
    }
  }

  void _onAuthLogout(AuthLogoutRequest event, Emitter<AuthState> emit) {
    _authRepository.logOut();
  }
}
