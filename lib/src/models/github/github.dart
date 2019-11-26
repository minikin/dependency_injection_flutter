library github;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dependency_injection_flutter/src/models/models.dart' show Repo;
import 'package:dependency_injection_flutter/src/models/serializer/serializer.dart';

part 'github.g.dart';

abstract class Github implements Built<Github, GithubBuilder> {
  static Serializer<Github> get serializer => _$githubSerializer;

  factory Github([void Function(GithubBuilder) updates]) = _$Github;

  Github._();

  Repo get repo;

  String toJson() {
    return json.encode(serializers.serializeWith(Github.serializer, this));
  }

  static Github fromJson(String jsonString) {
    return serializers.deserializeWith(
        Github.serializer, json.decode(jsonString));
  }
}
