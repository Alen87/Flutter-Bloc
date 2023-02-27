import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({required Key key, required Widget child})
      : super(key: key, child: child);

  // Provider({required super.child});
  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>(
            aspect: Provider))!
        .bloc;
  }
}
