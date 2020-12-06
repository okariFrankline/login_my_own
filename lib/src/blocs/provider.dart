// provide is used for scoped bloc pattern
import "package:flutter/material.dart";
// import bloc
import "bloc.dart";

// provide class
class Provider extends InheritedWidget {
  // instantiate bloc
  final _bloc = Bloc();

  // constructor
  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  // define of
  static Bloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>()._bloc;
  }
}
