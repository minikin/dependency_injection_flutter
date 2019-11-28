library environment;

import 'package:built_value/built_value.dart';
import 'package:dependency_injection_flutter/src/services/github/github_client.dart';
import 'package:http/http.dart';

part 'environment.g.dart';

// ignore: non_constant_identifier_names, type_annotate_public_apis
var Current = Environment.current();

abstract class Environment implements Built<Environment, EnvironmentBuilder> {
  factory Environment([void Function(EnvironmentBuilder) updates]) =
      _$Environment;

  factory Environment.current() {
    return Environment(
      (b) => b..gitHubClient = GitHubClient(client: Client()),
    );
  }

  Environment._();

  GitHubClient get gitHubClient;
}
