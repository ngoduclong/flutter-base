import 'package:equatable/equatable.dart';
import 'package:flutter_base/models/example.dart';

abstract class ExampleEvent extends Equatable {
  const ExampleEvent();

  @override
  List<Object> get props => [];
}

class LoadExamples extends ExampleEvent {}

class AddExample extends ExampleEvent {
  final Example example;

  const AddExample(this.example);

  @override
  List<Object> get props => [example];
}

class UpdateExamples extends ExampleEvent {
  final Example updatedExample;

  const UpdateExamples(this.updatedExample);

  @override
  List<Object> get props => [updatedExample];

  @override
  String toString() => 'updatedExample { updatedExample: $updatedExample }';
}
