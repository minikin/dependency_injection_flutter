// GENERATED CODE - DO NOT MODIFY BY HAND

part of event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Event> _$eventSerializer = new _$EventSerializer();

class _$EventSerializer implements StructuredSerializer<Event> {
  @override
  final Iterable<Type> types = const [Event, _$Event];
  @override
  final String wireName = 'Event';

  @override
  Iterable<Object> serialize(Serializers serializers, Event object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'properties',
      serializers.serialize(object.properties,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];

    return result;
  }

  @override
  Event deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'properties':
          result.properties.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String)
              ])) as BuiltMap<dynamic, dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Event extends Event {
  @override
  final String name;
  @override
  final BuiltMap<String, String> properties;

  factory _$Event([void Function(EventBuilder) updates]) =>
      (new EventBuilder()..update(updates)).build();

  _$Event._({this.name, this.properties}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Event', 'name');
    }
    if (properties == null) {
      throw new BuiltValueNullFieldError('Event', 'properties');
    }
  }

  @override
  Event rebuild(void Function(EventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => new EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        name == other.name &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), properties.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Event')
          ..add('name', name)
          ..add('properties', properties))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  MapBuilder<String, String> _properties;
  MapBuilder<String, String> get properties =>
      _$this._properties ??= new MapBuilder<String, String>();
  set properties(MapBuilder<String, String> properties) =>
      _$this._properties = properties;

  EventBuilder();

  EventBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _properties = _$v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Event;
  }

  @override
  void update(void Function(EventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Event build() {
    _$Event _$result;
    try {
      _$result =
          _$v ?? new _$Event._(name: name, properties: properties.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'properties';
        properties.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Event', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
