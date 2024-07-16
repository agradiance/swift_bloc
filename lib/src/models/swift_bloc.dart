import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'swift_event.dart';
part 'swift_state.dart';

abstract class SwiftBloc<StateModel> extends Bloc<SwiftEvent<StateModel>, SwiftState<StateModel>> {
  SwiftBloc({StateModel? model}) : super(SwiftState<StateModel>(model: model)) {
    on<SwiftEvent<StateModel>>(onSwiftEvent);
  }

  FutureOr onSwiftEvent(SwiftEvent<StateModel> event, Emitter<SwiftState> emit) async {
    if (state.model != event.model) {
      emit(SwiftState<StateModel>(model: event.model));
    }
  }

  StateModel? get model => state.model;
}
