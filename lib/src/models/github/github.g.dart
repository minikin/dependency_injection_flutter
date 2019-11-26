// GENERATED CODE - DO NOT MODIFY BY HAND

part of github;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Github> _$githubSerializer = new _$GithubSerializer();

class _$GithubSerializer implements StructuredSerializer<Github> {
  @override
  final Iterable<Type> types = const [Github, _$Github];
  @override
  final String wireName = 'Github';

  @override
  Iterable<Object> serialize(Serializers serializers, Github object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'repo',
      serializers.serialize(object.repo, specifiedType: const FullType(Repo)),
    ];

    return result;
  }

  @override
  Github deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GithubBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'repo':
          result.repo.replace(serializers.deserialize(value,
              specifiedType: const FullType(Repo)) as Repo);
          break;
      }
    }

    return result.build();
  }
}

class _$Github extends Github {
  @override
  final Repo repo;

  factory _$Github([void Function(GithubBuilder) updates]) =>
      (new GithubBuilder()..update(updates)).build();

  _$Github._({this.repo}) : super._() {
    if (repo == null) {
      throw new BuiltValueNullFieldError('Github', 'repo');
    }
  }

  @override
  Github rebuild(void Function(GithubBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GithubBuilder toBuilder() => new GithubBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Github && repo == other.repo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, repo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Github')..add('repo', repo))
        .toString();
  }
}

class GithubBuilder implements Builder<Github, GithubBuilder> {
  _$Github _$v;

  RepoBuilder _repo;
  RepoBuilder get repo => _$this._repo ??= new RepoBuilder();
  set repo(RepoBuilder repo) => _$this._repo = repo;

  GithubBuilder();

  GithubBuilder get _$this {
    if (_$v != null) {
      _repo = _$v.repo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Github other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Github;
  }

  @override
  void update(void Function(GithubBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Github build() {
    _$Github _$result;
    try {
      _$result = _$v ?? new _$Github._(repo: repo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repo';
        repo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Github', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
