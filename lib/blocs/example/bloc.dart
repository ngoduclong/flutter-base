import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_base/blocs/example/event.dart';
import 'package:flutter_base/blocs/example/state.dart';
import 'package:flutter_base/data/repositories/example.dart';
import 'package:flutter_base/models/example.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  final ExampleRepository exampleRepository;

  ExampleBloc(super.initialState, {required this.exampleRepository});

  Stream<ExampleState> mapEventToState(ExampleEvent event) async* {
    if (event is LoadExamples) {
      yield* _mapLoadExamplesToState();
    }
  }

  Stream<ExampleState> _mapLoadExamplesToState() async* {
    try {
      final examples = await exampleRepository.loadExamples();
      yield ExampleLoaded(
        examples.map(Example.fromEntity).toList(),
      );
    } catch (_) {
      yield ExampleNotLoaded();
    }
  }
}
