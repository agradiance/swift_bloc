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
    if (event.model != null && state.model != event.model) {
      emit(state.copyWith(model: event.model));
    }
  }

  StateModel? get model => state.model;
}
