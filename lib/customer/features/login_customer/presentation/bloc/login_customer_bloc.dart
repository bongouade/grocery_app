import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_customer_event.dart';
part 'login_customer_state.dart';

class LoginCustomerBloc extends Bloc<LoginCustomerEvent, LoginCustomerState> {
  LoginCustomerBloc() : super(LoginCustomerInitial()) {
    on<LoginCustomerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
