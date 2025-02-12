// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_todo.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetTodoIsarCollection on Isar {
  IsarCollection<int, TodoIsar> get todoIsars => this.collection();
}

const TodoIsarSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'TodoIsar',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'text',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'isCompleted',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, TodoIsar>(
    serialize: serializeTodoIsar,
    deserialize: deserializeTodoIsar,
    deserializeProperty: deserializeTodoIsarProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeTodoIsar(IsarWriter writer, TodoIsar object) {
  IsarCore.writeString(writer, 1, object.text);
  IsarCore.writeBool(writer, 2, object.isCompleted);
  return object.id;
}

@isarProtected
TodoIsar deserializeTodoIsar(IsarReader reader) {
  final object = TodoIsar();
  object.id = IsarCore.readId(reader);
  object.text = IsarCore.readString(reader, 1) ?? '';
  object.isCompleted = IsarCore.readBool(reader, 2);
  return object;
}

@isarProtected
dynamic deserializeTodoIsarProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readBool(reader, 2);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _TodoIsarUpdate {
  bool call({
    required int id,
    String? text,
    bool? isCompleted,
  });
}

class _TodoIsarUpdateImpl implements _TodoIsarUpdate {
  const _TodoIsarUpdateImpl(this.collection);

  final IsarCollection<int, TodoIsar> collection;

  @override
  bool call({
    required int id,
    Object? text = ignore,
    Object? isCompleted = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (text != ignore) 1: text as String?,
          if (isCompleted != ignore) 2: isCompleted as bool?,
        }) >
        0;
  }
}

sealed class _TodoIsarUpdateAll {
  int call({
    required List<int> id,
    String? text,
    bool? isCompleted,
  });
}

class _TodoIsarUpdateAllImpl implements _TodoIsarUpdateAll {
  const _TodoIsarUpdateAllImpl(this.collection);

  final IsarCollection<int, TodoIsar> collection;

  @override
  int call({
    required List<int> id,
    Object? text = ignore,
    Object? isCompleted = ignore,
  }) {
    return collection.updateProperties(id, {
      if (text != ignore) 1: text as String?,
      if (isCompleted != ignore) 2: isCompleted as bool?,
    });
  }
}

extension TodoIsarUpdate on IsarCollection<int, TodoIsar> {
  _TodoIsarUpdate get update => _TodoIsarUpdateImpl(this);

  _TodoIsarUpdateAll get updateAll => _TodoIsarUpdateAllImpl(this);
}

sealed class _TodoIsarQueryUpdate {
  int call({
    String? text,
    bool? isCompleted,
  });
}

class _TodoIsarQueryUpdateImpl implements _TodoIsarQueryUpdate {
  const _TodoIsarQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<TodoIsar> query;
  final int? limit;

  @override
  int call({
    Object? text = ignore,
    Object? isCompleted = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (text != ignore) 1: text as String?,
      if (isCompleted != ignore) 2: isCompleted as bool?,
    });
  }
}

extension TodoIsarQueryUpdate on IsarQuery<TodoIsar> {
  _TodoIsarQueryUpdate get updateFirst =>
      _TodoIsarQueryUpdateImpl(this, limit: 1);

  _TodoIsarQueryUpdate get updateAll => _TodoIsarQueryUpdateImpl(this);
}

class _TodoIsarQueryBuilderUpdateImpl implements _TodoIsarQueryUpdate {
  const _TodoIsarQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<TodoIsar, TodoIsar, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? text = ignore,
    Object? isCompleted = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (text != ignore) 1: text as String?,
        if (isCompleted != ignore) 2: isCompleted as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension TodoIsarQueryBuilderUpdate
    on QueryBuilder<TodoIsar, TodoIsar, QOperations> {
  _TodoIsarQueryUpdate get updateFirst =>
      _TodoIsarQueryBuilderUpdateImpl(this, limit: 1);

  _TodoIsarQueryUpdate get updateAll => _TodoIsarQueryBuilderUpdateImpl(this);
}

extension TodoIsarQueryFilter
    on QueryBuilder<TodoIsar, TodoIsar, QFilterCondition> {
  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition>
      textGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterFilterCondition> isCompletedEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }
}

extension TodoIsarQueryObject
    on QueryBuilder<TodoIsar, TodoIsar, QFilterCondition> {}

extension TodoIsarQuerySortBy on QueryBuilder<TodoIsar, TodoIsar, QSortBy> {
  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> sortByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> sortByTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> sortByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> sortByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension TodoIsarQuerySortThenBy
    on QueryBuilder<TodoIsar, TodoIsar, QSortThenBy> {
  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> thenByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> thenByTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> thenByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterSortBy> thenByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension TodoIsarQueryWhereDistinct
    on QueryBuilder<TodoIsar, TodoIsar, QDistinct> {
  QueryBuilder<TodoIsar, TodoIsar, QAfterDistinct> distinctByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TodoIsar, TodoIsar, QAfterDistinct> distinctByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension TodoIsarQueryProperty1
    on QueryBuilder<TodoIsar, TodoIsar, QProperty> {
  QueryBuilder<TodoIsar, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<TodoIsar, String, QAfterProperty> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<TodoIsar, bool, QAfterProperty> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension TodoIsarQueryProperty2<R>
    on QueryBuilder<TodoIsar, R, QAfterProperty> {
  QueryBuilder<TodoIsar, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<TodoIsar, (R, String), QAfterProperty> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<TodoIsar, (R, bool), QAfterProperty> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension TodoIsarQueryProperty3<R1, R2>
    on QueryBuilder<TodoIsar, (R1, R2), QAfterProperty> {
  QueryBuilder<TodoIsar, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<TodoIsar, (R1, R2, String), QOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<TodoIsar, (R1, R2, bool), QOperations> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}
