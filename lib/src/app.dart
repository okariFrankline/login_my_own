// import flutter
import "package:flutter/material.dart";
// import login screen
import "screens/login_screen.dart";
// import provider
import "blocs/provider.dart";

// app class
class App extends StatelessWidget {
  // build function
  Widget build(BuildContext context) {
    //  return a scaffold
    return Provider(
      child: MaterialApp(
        // set the title
        title: 'Login Me',
        // home page
        home: Scaffold(
          // appbar
          appBar: AppBar(
            // title
            title: Text('Login created own my own'),
            // set the color
            backgroundColor: Colors.teal,
          ),
          // set the body
          body: LoginScreen(),
        ),
      ),
    );
  }
}
