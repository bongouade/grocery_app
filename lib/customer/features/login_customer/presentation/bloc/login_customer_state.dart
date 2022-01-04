part of 'login_customer_bloc.dart';

abstract class LoginCustomerState extends Equatable {
  const LoginCustomerState();  

  @override
  List<Object> get props => [];
}
class LoginCustomerInitial extends LoginCustomerState {}
