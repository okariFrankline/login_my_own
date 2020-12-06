// responsible for the bloc pattern
import "dart:async";
// import the validator mixin
import "mixins/validator_mixins.dart";

// bloc class
class Bloc extends Object with ValidatorMixin {
  // define an email stream contoller for handling email stream
  final _emailController = StreamController<String>();
  // password controller
  final _passwordController = StreamController<String>();

  // create a getter function for the email streal
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  // stream for the password
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  // getter function for allowing to add an email to the stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // function for closing the controllers
  dispose() {
    // close the email controller
    _emailController.close();
    // close the password controller
    _passwordController.close();
  }
}
