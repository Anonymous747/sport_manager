import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:sport_manager/src/bloc/validator.dart';

class Bloc extends Object with Validator implements BaseBloc {
  
  final _emailController = BehaviorSubject<String>();
  final _paswordController = BehaviorSubject<String>();

  StreamSink<String> get emailChanged => _emailController.sink;
  StreamSink<String> get passwordChanged => _paswordController.sink;

  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password => _paswordController.stream.transform(passwordValidator);

  Stream<bool> get submitCheck => Observable.combineLatest2(email, password, (e, p) => true);

  @override
  void dispose() {
    _emailController?.close();
    _paswordController?.close();
  }

}

abstract class BaseBloc{
  void dispose();
}