// GENERATED CODE - DO NOT MODIFY BY HAND

part of environment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Environment extends Environment {
  @override
  final GitHubClient gitHubClient;

  factory _$Environment([void Function(EnvironmentBuilder) updates]) =>
      (new EnvironmentBuilder()..update(updates)).build();

  _$Environment._({this.gitHubClient}) : super._() {
    if (gitHubClient == null) {
      throw new BuiltValueNullFieldError('Environment', 'gitHubClient');
    }
  }

  @override
  Environment rebuild(void Function(EnvironmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentBuilder toBuilder() => new EnvironmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Environment && gitHubClient == other.gitHubClient;
  }

  @override
  int get hashCode {
    return $jf($jc(0, gitHubClient.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Environment')
          ..add('gitHubClient', gitHubClient))
        .toString();
  }
}

class EnvironmentBuilder implements Builder<Environment, EnvironmentBuilder> {
  _$Environment _$v;

  GitHubClient _gitHubClient;
  GitHubClient get gitHubClient => _$this._gitHubClient;
  set gitHubClient(GitHubClient gitHubClient) =>
      _$this._gitHubClient = gitHubClient;

  EnvironmentBuilder();

  EnvironmentBuilder get _$this {
    if (_$v != null) {
      _gitHubClient = _$v.gitHubClient;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Environment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Environment;
  }

  @override
  void update(void Function(EnvironmentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Environment build() {
    final _$result = _$v ?? new _$Environment._(gitHubClient: gitHubClient);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
