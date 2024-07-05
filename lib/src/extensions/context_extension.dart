import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swift_bloc/src/models/swift_bloc.dart';

extension BuildContextExtension on BuildContext {
  getModel<B extends SwiftBloc>({bool listen = false}) {
    return Provider.of<B>(this, listen: listen).model;
  }
}
