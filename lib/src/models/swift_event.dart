part of 'swift_bloc.dart';

abstract class SwiftEvent<StateModel> extends Equatable {
  final StateModel? model;
  const SwiftEvent({this.model});

  @override
  List<Object?> get props => [model];
}
