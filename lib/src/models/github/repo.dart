library repo;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dependency_injection_flutter/src/models/models.dart';

part 'repo.g.dart';

abstract class Repo implements Built<Repo, RepoBuilder> {
  static Serializer<Repo> get serializer => _$repoSerializer;

  factory Repo([void Function(RepoBuilder) updates]) = _$Repo;

  Repo._();

  bool get archived;

  @nullable
  String get description;

  String get htmlUrl;

  String get name;

  DateTime get pushedAt;

  String toJson() {
    return json.encode(serializers.serializeWith(Repo.serializer, this));
  }

  static Repo fromJson(String jsonString) {
    return serializers.deserializeWith(
        Repo.serializer, json.decode(jsonString));
  }
}
