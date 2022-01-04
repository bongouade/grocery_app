import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_customer_event.dart';
part 'register_customer_state.dart';

class RegisterCustomerBloc extends Bloc<RegisterCustomerEvent, RegisterCustomerState> {
  RegisterCustomerBloc() : super(RegisterCustomerInitial()) {
    on<RegisterCustomerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
