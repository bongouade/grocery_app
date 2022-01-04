part of 'register_customer_bloc.dart';

abstract class RegisterCustomerState extends Equatable {
  const RegisterCustomerState();  

  @override
  List<Object> get props => [];
}
class RegisterCustomerInitial extends RegisterCustomerState {}
