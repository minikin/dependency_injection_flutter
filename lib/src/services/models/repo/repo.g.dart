// GENERATED CODE - DO NOT MODIFY BY HAND

part of repo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Repo> _$repoSerializer = new _$RepoSerializer();

class _$RepoSerializer implements StructuredSerializer<Repo> {
  @override
  final Iterable<Type> types = const [Repo, _$Repo];
  @override
  final String wireName = 'Repo';

  @override
  Iterable<Object> serialize(Serializers serializers, Repo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'archived',
      serializers.serialize(object.archived,
          specifiedType: const FullType(bool)),
      'html_url',
      serializers.serialize(object.htmlUrl,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'pushed_at',
      serializers.serialize(object.pushedAt,
          specifiedType: const FullType(String)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Repo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'archived':
          result.archived = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pushed_at':
          result.pushedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Repo extends Repo {
  @override
  final bool archived;
  @override
  final String description;
  @override
  final String htmlUrl;
  @override
  final String name;
  @override
  final String pushedAt;

  factory _$Repo([void Function(RepoBuilder) updates]) =>
      (new RepoBuilder()..update(updates)).build();

  _$Repo._(
      {this.archived, this.description, this.htmlUrl, this.name, this.pushedAt})
      : super._() {
    if (archived == null) {
      throw new BuiltValueNullFieldError('Repo', 'archived');
    }
    if (htmlUrl == null) {
      throw new BuiltValueNullFieldError('Repo', 'htmlUrl');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Repo', 'name');
    }
    if (pushedAt == null) {
      throw new BuiltValueNullFieldError('Repo', 'pushedAt');
    }
  }

  @override
  Repo rebuild(void Function(RepoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepoBuilder toBuilder() => new RepoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Repo &&
        archived == other.archived &&
        description == other.description &&
        htmlUrl == other.htmlUrl &&
        name == other.name &&
        pushedAt == other.pushedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, archived.hashCode), description.hashCode),
                htmlUrl.hashCode),
            name.hashCode),
        pushedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Repo')
          ..add('archived', archived)
          ..add('description', description)
          ..add('htmlUrl', htmlUrl)
          ..add('name', name)
          ..add('pushedAt', pushedAt))
        .toString();
  }
}

class RepoBuilder implements Builder<Repo, RepoBuilder> {
  _$Repo _$v;

  bool _archived;
  bool get archived => _$this._archived;
  set archived(bool archived) => _$this._archived = archived;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _pushedAt;
  String get pushedAt => _$this._pushedAt;
  set pushedAt(String pushedAt) => _$this._pushedAt = pushedAt;

  RepoBuilder();

  RepoBuilder get _$this {
    if (_$v != null) {
      _archived = _$v.archived;
      _description = _$v.description;
      _htmlUrl = _$v.htmlUrl;
      _name = _$v.name;
      _pushedAt = _$v.pushedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Repo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Repo;
  }

  @override
  void update(void Function(RepoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Repo build() {
    final _$result = _$v ??
        new _$Repo._(
            archived: archived,
            description: description,
            htmlUrl: htmlUrl,
            name: name,
            pushedAt: pushedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
