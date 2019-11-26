library analytic;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dependency_injection_flutter/src/models/models.dart';

part 'analytic.g.dart';

abstract class Analytic implements Built<Analytic, AnalyticBuilder> {
  Event get event;

  Analytic._();

  factory Analytic([void Function(AnalyticBuilder) updates]) = _$Analytic;

  String toJson() {
    return json.encode(serializers.serializeWith(Analytic.serializer, this));
  }

  static Analytic fromJson(String jsonString) {
    return serializers.deserializeWith(
        Analytic.serializer, json.decode(jsonString));
  }

  static Serializer<Analytic> get serializer => _$analyticSerializer;
}
