import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'reset_password_customer_event.dart';
part 'reset_password_customer_state.dart';

class ResetPasswordCustomerBloc extends Bloc<ResetPasswordCustomerEvent, ResetPasswordCustomerState> {
  ResetPasswordCustomerBloc() : super(ResetPasswordCustomerInitial()) {
    on<ResetPasswordCustomerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
