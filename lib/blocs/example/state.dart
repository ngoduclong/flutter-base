import 'package:equatable/equatable.dart';
import 'package:flutter_base/models/example.dart';

abstract class ExampleState extends Equatable {
  const ExampleState();

  @override
  List<Object> get props => [];
}

class ExampleLoading extends ExampleState {}

class ExampleLoaded extends ExampleState {
  final List<Example> examples;

  const ExampleLoaded([this.examples = const []]);

  @override
  List<Object> get props => [examples];
}

class ExampleNotLoaded extends ExampleState {}
