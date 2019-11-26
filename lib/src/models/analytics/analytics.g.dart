// GENERATED CODE - DO NOT MODIFY BY HAND

part of analytics;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Analytics> _$analyticsSerializer = new _$AnalyticsSerializer();

class _$AnalyticsSerializer implements StructuredSerializer<Analytics> {
  @override
  final Iterable<Type> types = const [Analytics, _$Analytics];
  @override
  final String wireName = 'Analytics';

  @override
  Iterable<Object> serialize(Serializers serializers, Analytics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'event',
      serializers.serialize(object.event, specifiedType: const FullType(Event)),
    ];

    return result;
  }

  @override
  Analytics deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnalyticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'event':
          result.event.replace(serializers.deserialize(value,
              specifiedType: const FullType(Event)) as Event);
          break;
      }
    }

    return result.build();
  }
}

class _$Analytics extends Analytics {
  @override
  final Event event;

  factory _$Analytics([void Function(AnalyticsBuilder) updates]) =>
      (new AnalyticsBuilder()..update(updates)).build();

  _$Analytics._({this.event}) : super._() {
    if (event == null) {
      throw new BuiltValueNullFieldError('Analytics', 'event');
    }
  }

  @override
  Analytics rebuild(void Function(AnalyticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticsBuilder toBuilder() => new AnalyticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Analytics && event == other.event;
  }

  @override
  int get hashCode {
    return $jf($jc(0, event.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Analytics')..add('event', event))
        .toString();
  }
}

class AnalyticsBuilder implements Builder<Analytics, AnalyticsBuilder> {
  _$Analytics _$v;

  EventBuilder _event;
  EventBuilder get event => _$this._event ??= new EventBuilder();
  set event(EventBuilder event) => _$this._event = event;

  AnalyticsBuilder();

  AnalyticsBuilder get _$this {
    if (_$v != null) {
      _event = _$v.event?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Analytics other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Analytics;
  }

  @override
  void update(void Function(AnalyticsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Analytics build() {
    _$Analytics _$result;
    try {
      _$result = _$v ?? new _$Analytics._(event: event.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'event';
        event.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Analytics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
