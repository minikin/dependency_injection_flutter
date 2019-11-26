// GENERATED CODE - DO NOT MODIFY BY HAND

part of analytic_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnalyticEvent> _$analyticEventSerializer =
    new _$AnalyticEventSerializer();

class _$AnalyticEventSerializer implements StructuredSerializer<AnalyticEvent> {
  @override
  final Iterable<Type> types = const [AnalyticEvent, _$AnalyticEvent];
  @override
  final String wireName = 'AnalyticEvent';

  @override
  Iterable<Object> serialize(Serializers serializers, AnalyticEvent object,
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
  AnalyticEvent deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnalyticEventBuilder();

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

class _$AnalyticEvent extends AnalyticEvent {
  @override
  final String name;
  @override
  final BuiltMap<String, String> properties;

  factory _$AnalyticEvent([void Function(AnalyticEventBuilder) updates]) =>
      (new AnalyticEventBuilder()..update(updates)).build();

  _$AnalyticEvent._({this.name, this.properties}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('AnalyticEvent', 'name');
    }
    if (properties == null) {
      throw new BuiltValueNullFieldError('AnalyticEvent', 'properties');
    }
  }

  @override
  AnalyticEvent rebuild(void Function(AnalyticEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticEventBuilder toBuilder() => new AnalyticEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticEvent &&
        name == other.name &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), properties.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnalyticEvent')
          ..add('name', name)
          ..add('properties', properties))
        .toString();
  }
}

class AnalyticEventBuilder
    implements Builder<AnalyticEvent, AnalyticEventBuilder> {
  _$AnalyticEvent _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  MapBuilder<String, String> _properties;
  MapBuilder<String, String> get properties =>
      _$this._properties ??= new MapBuilder<String, String>();
  set properties(MapBuilder<String, String> properties) =>
      _$this._properties = properties;

  AnalyticEventBuilder();

  AnalyticEventBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _properties = _$v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalyticEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AnalyticEvent;
  }

  @override
  void update(void Function(AnalyticEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnalyticEvent build() {
    _$AnalyticEvent _$result;
    try {
      _$result = _$v ??
          new _$AnalyticEvent._(name: name, properties: properties.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'properties';
        properties.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AnalyticEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
