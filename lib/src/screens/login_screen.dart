// import flutter
import "package:flutter/material.dart";
// import bloc
import "../blocs/bloc.dart";
// import provider
import "../blocs/provider.dart";

// login screen
class LoginScreen extends StatelessWidget {
  // implement the  build function
  @override
  Widget build(BuildContext context) {
    // create a new bloc
    final Bloc bloc = Provider.of(context);

    // return a container
    return Container(
      // set a margin of 20 all round
      margin: EdgeInsets.all(20.0),
      // child
      child: buildForm(bloc),
    );
  }

  // function for building a form
  Widget buildForm(bloc) {
    // return a widget
    return Column(
      // return the chidren
      children: <Widget>[
        // email filed
        emailField(bloc),
        // password field
        passwordField(bloc),
        // padding
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        // submitButtom
        submitButton(),
      ],
    );
  }

  // function for returning the email field
  Widget emailField(bloc) {
    // return a stream builder
    return StreamBuilder(
      // stream
      stream: bloc.email,
      // builder
      builder: (context, snapshot) {
        // return stream builder
        return TextField(
          // keyboard tyoe
          keyboardType: TextInputType.emailAddress,
          // onChange
          onChanged: bloc.changeEmail,
          // set the decoration
          decoration: InputDecoration(
            // label text
            labelText: 'Email Address',
            // icon
            icon: Icon(Icons.email),
            // hint text
            hintText: 'you@example.com',
            // set the error text
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  // function for showing the password
  // configure to use the stream builder
  Widget passwordField(bloc) {
    // return stream builder
    return StreamBuilder(
      // stream
      stream: bloc.password,
      // builder
      builder: (context, snapshot) {
        // return a text field
        return TextField(
          // obscure the text
          obscureText: true,
          // onchanged
          onChanged: bloc.changePassword,
          // decoration
          decoration: InputDecoration(
            // labe text
            labelText: 'Password',
            // hint text
            hintText: 'password',
            // icon
            icon: Icon(Icons.visibility_off),
            // error text
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  // submit button
  Widget submitButton() {
    // return an elevated button
    return ElevatedButton(
      // set the style
      style: ButtonStyle(
          // backgound color
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
      // child
      child: Text('Submit'),
      // on pressed
      onPressed: () {},
    );
  }
}
