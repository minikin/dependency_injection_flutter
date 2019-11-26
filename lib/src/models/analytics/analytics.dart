library analytics;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dependency_injection_flutter/src/models/analytics/event.dart';
import 'package:dependency_injection_flutter/src/models/serializer/serializer.dart';

part 'analytics.g.dart';

abstract class Analytics implements Built<Analytics, AnalyticsBuilder> {
  static Serializer<Analytics> get serializer => _$analyticsSerializer;

  factory Analytics([void Function(AnalyticsBuilder) updates]) = _$Analytics;

  Analytics._();

  Event get event;

  String toJson() {
    return json.encode(serializers.serializeWith(Analytics.serializer, this));
  }

  static Analytics fromJson(String jsonString) {
    return serializers.deserializeWith(
        Analytics.serializer, json.decode(jsonString));
  }
}
