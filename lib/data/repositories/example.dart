import 'dart:async';
import 'dart:core';

import 'package:flutter_base/models/example.dart';

abstract class ExampleRepository {
  Future<List<ExampleEntity>> loadExamples();

  Future saveExamples(List<ExampleEntity> examples);
}
