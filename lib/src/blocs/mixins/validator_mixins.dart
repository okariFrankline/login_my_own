// import async
import "dart:async";

class ValidatorMixin {
  // validate email transformer
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      // handle data
      handleData: (email, sink) {
    // ensure email contains an '@'
    if (email.contains('@')) {
      // add to the sink
      sink.add(email);
    } else {
      // return an error
      sink.addError('Enter a valid email address');
    }
  });

  // validate password
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      // handle data
      handleData: (password, sink) {
    // ensure password has four characters
    if (password.length >= 4) {
      // add to sink
      sink.add(password);
    } else {
      // return an error
      sink.addError('Password must be atleast 4 characters long');
    }
  });
}
