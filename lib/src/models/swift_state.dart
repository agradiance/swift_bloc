// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'swift_bloc.dart';

class SwiftState<StateModel> extends Equatable {
  final StateModel? model;
  const SwiftState({this.model});

  @override
  List<Object?> get props => [model];

  SwiftState<StateModel> copyWith({
    StateModel? model,
  }) {
    return SwiftState<StateModel>(model: model ?? this.model);
  }
}
