library event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dependency_injection_flutter/src/services/models/models.dart';

part 'event.g.dart';

abstract class Event implements Built<Event, EventBuilder> {
  static Serializer<Event> get serializer => _$eventSerializer;
  factory Event([void Function(EventBuilder) updates]) = _$Event;

  Event._();

  String get name;

  BuiltMap<String, String> get properties;

  String toJson() {
    return json.encode(serializers.serializeWith(Event.serializer, this));
  }

  static Event fromJson(String jsonString) {
    return serializers.deserializeWith(
        Event.serializer, json.decode(jsonString));
  }
}
