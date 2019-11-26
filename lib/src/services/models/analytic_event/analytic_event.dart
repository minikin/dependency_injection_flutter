library analytic_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dependency_injection_flutter/src/services/models/models.dart';

part 'analytic_event.g.dart';

abstract class AnalyticEvent
    implements Built<AnalyticEvent, AnalyticEventBuilder> {
  static Serializer<AnalyticEvent> get serializer => _$analyticEventSerializer;

  factory AnalyticEvent([void Function(AnalyticEventBuilder) updates]) =
      _$AnalyticEvent;

  AnalyticEvent._();

  String get name;

  BuiltMap<String, String> get properties;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AnalyticEvent.serializer, this));
  }

  static AnalyticEvent fromJson(String jsonString) {
    return serializers.deserializeWith(
        AnalyticEvent.serializer, json.decode(jsonString));
  }
}
