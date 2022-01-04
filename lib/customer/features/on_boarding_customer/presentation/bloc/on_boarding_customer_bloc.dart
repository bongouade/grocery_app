import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_boarding_customer_event.dart';
part 'on_boarding_customer_state.dart';

class OnBoardingCustomerBloc extends Bloc<OnBoardingCustomerEvent, OnBoardingCustomerState> {
  OnBoardingCustomerBloc() : super(OnBoardingCustomerInitial()) {
    on<OnBoardingCustomerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
