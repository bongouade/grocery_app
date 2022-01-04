import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profil_customer_event.dart';
part 'profil_customer_state.dart';

class ProfilCustomerBloc extends Bloc<ProfilCustomerEvent, ProfilCustomerState> {
  ProfilCustomerBloc() : super(ProfilCustomerInitial()) {
    on<ProfilCustomerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
