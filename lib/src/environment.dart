library environment;

import 'package:built_value/built_value.dart';

part 'environment.g.dart';

abstract class Environment implements Built<Environment, EnvironmentBuilder> {
  // fields go here

  Environment._();

  factory Environment([void Function(EnvironmentBuilder) updates]) =
      _$Environment;
}
