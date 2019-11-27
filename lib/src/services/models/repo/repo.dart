library repo;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dependency_injection_flutter/src/services/models/models.dart';

part 'repo.g.dart';

abstract class Repo implements Built<Repo, RepoBuilder> {
  static Serializer<Repo> get serializer => _$repoSerializer;

  factory Repo([void Function(RepoBuilder) updates]) = _$Repo;

  Repo._();

  bool get archived;

  @nullable
  String get description;

  @BuiltValueField(wireName: 'html_url')
  String get htmlUrl;

  String get name;

  @BuiltValueField(wireName: 'pushed_at')
  DateTime get pushedAt;

  String toJson() {
    return json.encode(serializers.serializeWith(Repo.serializer, this));
  }

  static Repo fromJson(String jsonString) {
    return serializers.deserializeWith(
        Repo.serializer, json.decode(jsonString));
  }

  static BuiltList<Repo> parseListOfRepos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

    return deserializeListOf<Repo>(parsed);
  }
}
