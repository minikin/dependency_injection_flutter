library environment;

import 'package:built_value/built_value.dart';

part 'environment.g.dart';

// ignore: non_constant_identifier_names, type_annotate_public_apis
var Current = Environment.current();

abstract class Environment implements Built<Environment, EnvironmentBuilder> {
  Environment._();

  factory Environment([void Function(EnvironmentBuilder) updates]) =
      _$Environment;

  factory Environment.current() {
    return Environment((b) => b);
  }
}
