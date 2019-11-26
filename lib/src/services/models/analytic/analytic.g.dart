// GENERATED CODE - DO NOT MODIFY BY HAND

part of analytic;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Analytic> _$analyticSerializer = new _$AnalyticSerializer();

class _$AnalyticSerializer implements StructuredSerializer<Analytic> {
  @override
  final Iterable<Type> types = const [Analytic, _$Analytic];
  @override
  final String wireName = 'Analytic';

  @override
  Iterable<Object> serialize(Serializers serializers, Analytic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'event',
      serializers.serialize(object.event, specifiedType: const FullType(Event)),
    ];

    return result;
  }

  @override
  Analytic deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnalyticBuilder();

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

class _$Analytic extends Analytic {
  @override
  final Event event;

  factory _$Analytic([void Function(AnalyticBuilder) updates]) =>
      (new AnalyticBuilder()..update(updates)).build();

  _$Analytic._({this.event}) : super._() {
    if (event == null) {
      throw new BuiltValueNullFieldError('Analytic', 'event');
    }
  }

  @override
  Analytic rebuild(void Function(AnalyticBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticBuilder toBuilder() => new AnalyticBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Analytic && event == other.event;
  }

  @override
  int get hashCode {
    return $jf($jc(0, event.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Analytic')..add('event', event))
        .toString();
  }
}

class AnalyticBuilder implements Builder<Analytic, AnalyticBuilder> {
  _$Analytic _$v;

  EventBuilder _event;
  EventBuilder get event => _$this._event ??= new EventBuilder();
  set event(EventBuilder event) => _$this._event = event;

  AnalyticBuilder();

  AnalyticBuilder get _$this {
    if (_$v != null) {
      _event = _$v.event?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Analytic other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Analytic;
  }

  @override
  void update(void Function(AnalyticBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Analytic build() {
    _$Analytic _$result;
    try {
      _$result = _$v ?? new _$Analytic._(event: event.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'event';
        event.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Analytic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
