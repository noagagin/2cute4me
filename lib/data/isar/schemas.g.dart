// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemas.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetShoppingListCollection on Isar {
  IsarCollection<ShoppingList> get shoppingLists => this.collection();
}

const ShoppingListSchema = CollectionSchema(
  name: r'ShoppingList',
  id: 4550947625737655976,
  properties: {
    r'colorIndex': PropertySchema(
      id: 0,
      name: r'colorIndex',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'entryConfettiLastAt': PropertySchema(
      id: 2,
      name: r'entryConfettiLastAt',
      type: IsarType.dateTime,
    ),
    r'iconKey': PropertySchema(
      id: 3,
      name: r'iconKey',
      type: IsarType.string,
    ),
    r'lastOpenedAt': PropertySchema(
      id: 4,
      name: r'lastOpenedAt',
      type: IsarType.dateTime,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 6,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _shoppingListEstimateSize,
  serialize: _shoppingListSerialize,
  deserialize: _shoppingListDeserialize,
  deserializeProp: _shoppingListDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    ),
    r'updatedAt': IndexSchema(
      id: -6238191080293565125,
      name: r'updatedAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'updatedAt',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _shoppingListGetId,
  getLinks: _shoppingListGetLinks,
  attach: _shoppingListAttach,
  version: '3.1.0+1',
);

int _shoppingListEstimateSize(
  ShoppingList object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.iconKey.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _shoppingListSerialize(
  ShoppingList object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.colorIndex);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeDateTime(offsets[2], object.entryConfettiLastAt);
  writer.writeString(offsets[3], object.iconKey);
  writer.writeDateTime(offsets[4], object.lastOpenedAt);
  writer.writeString(offsets[5], object.name);
  writer.writeDateTime(offsets[6], object.updatedAt);
}

ShoppingList _shoppingListDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShoppingList();
  object.colorIndex = reader.readLong(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.entryConfettiLastAt = reader.readDateTimeOrNull(offsets[2]);
  object.iconKey = reader.readString(offsets[3]);
  object.id = id;
  object.lastOpenedAt = reader.readDateTimeOrNull(offsets[4]);
  object.name = reader.readString(offsets[5]);
  object.updatedAt = reader.readDateTime(offsets[6]);
  return object;
}

P _shoppingListDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _shoppingListGetId(ShoppingList object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _shoppingListGetLinks(ShoppingList object) {
  return [];
}

void _shoppingListAttach(
    IsarCollection<dynamic> col, Id id, ShoppingList object) {
  object.id = id;
}

extension ShoppingListQueryWhereSort
    on QueryBuilder<ShoppingList, ShoppingList, QWhere> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhere> anyUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'updatedAt'),
      );
    });
  }
}

extension ShoppingListQueryWhere
    on QueryBuilder<ShoppingList, ShoppingList, QWhereClause> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> nameEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> nameNotEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> updatedAtEqualTo(
      DateTime updatedAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'updatedAt',
        value: [updatedAt],
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause>
      updatedAtNotEqualTo(DateTime updatedAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updatedAt',
              lower: [],
              upper: [updatedAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updatedAt',
              lower: [updatedAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updatedAt',
              lower: [updatedAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updatedAt',
              lower: [],
              upper: [updatedAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause>
      updatedAtGreaterThan(
    DateTime updatedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'updatedAt',
        lower: [updatedAt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> updatedAtLessThan(
    DateTime updatedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'updatedAt',
        lower: [],
        upper: [updatedAt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> updatedAtBetween(
    DateTime lowerUpdatedAt,
    DateTime upperUpdatedAt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'updatedAt',
        lower: [lowerUpdatedAt],
        includeLower: includeLower,
        upper: [upperUpdatedAt],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ShoppingListQueryFilter
    on QueryBuilder<ShoppingList, ShoppingList, QFilterCondition> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      colorIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      colorIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      colorIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      colorIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      entryConfettiLastAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'entryConfettiLastAt',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      entryConfettiLastAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'entryConfettiLastAt',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      entryConfettiLastAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entryConfettiLastAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      entryConfettiLastAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entryConfettiLastAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      entryConfettiLastAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entryConfettiLastAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      entryConfettiLastAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entryConfettiLastAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iconKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iconKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iconKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iconKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iconKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iconKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iconKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconKey',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      iconKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iconKey',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      lastOpenedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastOpenedAt',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      lastOpenedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastOpenedAt',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      lastOpenedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastOpenedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      lastOpenedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastOpenedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      lastOpenedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastOpenedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      lastOpenedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastOpenedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ShoppingListQueryObject
    on QueryBuilder<ShoppingList, ShoppingList, QFilterCondition> {}

extension ShoppingListQueryLinks
    on QueryBuilder<ShoppingList, ShoppingList, QFilterCondition> {}

extension ShoppingListQuerySortBy
    on QueryBuilder<ShoppingList, ShoppingList, QSortBy> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy>
      sortByColorIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy>
      sortByEntryConfettiLastAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryConfettiLastAt', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy>
      sortByEntryConfettiLastAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryConfettiLastAt', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByIconKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconKey', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByIconKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconKey', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByLastOpenedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOpenedAt', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy>
      sortByLastOpenedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOpenedAt', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ShoppingListQuerySortThenBy
    on QueryBuilder<ShoppingList, ShoppingList, QSortThenBy> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy>
      thenByColorIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy>
      thenByEntryConfettiLastAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryConfettiLastAt', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy>
      thenByEntryConfettiLastAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryConfettiLastAt', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByIconKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconKey', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByIconKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconKey', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByLastOpenedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOpenedAt', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy>
      thenByLastOpenedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOpenedAt', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ShoppingListQueryWhereDistinct
    on QueryBuilder<ShoppingList, ShoppingList, QDistinct> {
  QueryBuilder<ShoppingList, ShoppingList, QDistinct> distinctByColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorIndex');
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QDistinct>
      distinctByEntryConfettiLastAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entryConfettiLastAt');
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QDistinct> distinctByIconKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iconKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QDistinct> distinctByLastOpenedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastOpenedAt');
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension ShoppingListQueryProperty
    on QueryBuilder<ShoppingList, ShoppingList, QQueryProperty> {
  QueryBuilder<ShoppingList, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ShoppingList, int, QQueryOperations> colorIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorIndex');
    });
  }

  QueryBuilder<ShoppingList, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ShoppingList, DateTime?, QQueryOperations>
      entryConfettiLastAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entryConfettiLastAt');
    });
  }

  QueryBuilder<ShoppingList, String, QQueryOperations> iconKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iconKey');
    });
  }

  QueryBuilder<ShoppingList, DateTime?, QQueryOperations>
      lastOpenedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastOpenedAt');
    });
  }

  QueryBuilder<ShoppingList, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ShoppingList, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetItemCollection on Isar {
  IsarCollection<Item> get items => this.collection();
}

const ItemSchema = CollectionSchema(
  name: r'Item',
  id: 7900997316587104717,
  properties: {
    r'category': PropertySchema(
      id: 0,
      name: r'category',
      type: IsarType.long,
    ),
    r'categoryIndex': PropertySchema(
      id: 1,
      name: r'categoryIndex',
      type: IsarType.long,
    ),
    r'checkedAt': PropertySchema(
      id: 2,
      name: r'checkedAt',
      type: IsarType.dateTime,
    ),
    r'checkedIndex': PropertySchema(
      id: 3,
      name: r'checkedIndex',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'isChecked': PropertySchema(
      id: 5,
      name: r'isChecked',
      type: IsarType.bool,
    ),
    r'listId': PropertySchema(
      id: 6,
      name: r'listId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'orderInCategory': PropertySchema(
      id: 8,
      name: r'orderInCategory',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 9,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _itemEstimateSize,
  serialize: _itemSerialize,
  deserialize: _itemDeserialize,
  deserializeProp: _itemDeserializeProp,
  idName: r'id',
  indexes: {
    r'listId': IndexSchema(
      id: -4312380808616005139,
      name: r'listId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'listId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'categoryIndex_listId': IndexSchema(
      id: 5975242583933951853,
      name: r'categoryIndex_listId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'categoryIndex',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'listId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'checkedIndex_listId': IndexSchema(
      id: -5723731125424075985,
      name: r'checkedIndex_listId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'checkedIndex',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'listId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _itemGetId,
  getLinks: _itemGetLinks,
  attach: _itemAttach,
  version: '3.1.0+1',
);

int _itemEstimateSize(
  Item object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _itemSerialize(
  Item object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.category);
  writer.writeLong(offsets[1], object.categoryIndex);
  writer.writeDateTime(offsets[2], object.checkedAt);
  writer.writeLong(offsets[3], object.checkedIndex);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeBool(offsets[5], object.isChecked);
  writer.writeLong(offsets[6], object.listId);
  writer.writeString(offsets[7], object.name);
  writer.writeLong(offsets[8], object.orderInCategory);
  writer.writeDateTime(offsets[9], object.updatedAt);
}

Item _itemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Item();
  object.category = reader.readLong(offsets[0]);
  object.checkedAt = reader.readDateTimeOrNull(offsets[2]);
  object.createdAt = reader.readDateTime(offsets[4]);
  object.id = id;
  object.isChecked = reader.readBool(offsets[5]);
  object.listId = reader.readLong(offsets[6]);
  object.name = reader.readString(offsets[7]);
  object.orderInCategory = reader.readLong(offsets[8]);
  object.updatedAt = reader.readDateTime(offsets[9]);
  return object;
}

P _itemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _itemGetId(Item object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _itemGetLinks(Item object) {
  return [];
}

void _itemAttach(IsarCollection<dynamic> col, Id id, Item object) {
  object.id = id;
}

extension ItemQueryWhereSort on QueryBuilder<Item, Item, QWhere> {
  QueryBuilder<Item, Item, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Item, Item, QAfterWhere> anyListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'listId'),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterWhere> anyCategoryIndexListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'categoryIndex_listId'),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterWhere> anyCheckedIndexListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'checkedIndex_listId'),
      );
    });
  }
}

extension ItemQueryWhere on QueryBuilder<Item, Item, QWhereClause> {
  QueryBuilder<Item, Item, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> listIdEqualTo(int listId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'listId',
        value: [listId],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> listIdNotEqualTo(int listId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'listId',
              lower: [],
              upper: [listId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'listId',
              lower: [listId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'listId',
              lower: [listId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'listId',
              lower: [],
              upper: [listId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> listIdGreaterThan(
    int listId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'listId',
        lower: [listId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> listIdLessThan(
    int listId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'listId',
        lower: [],
        upper: [listId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> listIdBetween(
    int lowerListId,
    int upperListId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'listId',
        lower: [lowerListId],
        includeLower: includeLower,
        upper: [upperListId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> categoryIndexEqualToAnyListId(
      int categoryIndex) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'categoryIndex_listId',
        value: [categoryIndex],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> categoryIndexNotEqualToAnyListId(
      int categoryIndex) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryIndex_listId',
              lower: [],
              upper: [categoryIndex],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryIndex_listId',
              lower: [categoryIndex],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryIndex_listId',
              lower: [categoryIndex],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryIndex_listId',
              lower: [],
              upper: [categoryIndex],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> categoryIndexGreaterThanAnyListId(
    int categoryIndex, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryIndex_listId',
        lower: [categoryIndex],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> categoryIndexLessThanAnyListId(
    int categoryIndex, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryIndex_listId',
        lower: [],
        upper: [categoryIndex],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> categoryIndexBetweenAnyListId(
    int lowerCategoryIndex,
    int upperCategoryIndex, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryIndex_listId',
        lower: [lowerCategoryIndex],
        includeLower: includeLower,
        upper: [upperCategoryIndex],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> categoryIndexListIdEqualTo(
      int categoryIndex, int listId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'categoryIndex_listId',
        value: [categoryIndex, listId],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause>
      categoryIndexEqualToListIdNotEqualTo(int categoryIndex, int listId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryIndex_listId',
              lower: [categoryIndex],
              upper: [categoryIndex, listId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryIndex_listId',
              lower: [categoryIndex, listId],
              includeLower: false,
              upper: [categoryIndex],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryIndex_listId',
              lower: [categoryIndex, listId],
              includeLower: false,
              upper: [categoryIndex],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryIndex_listId',
              lower: [categoryIndex],
              upper: [categoryIndex, listId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause>
      categoryIndexEqualToListIdGreaterThan(
    int categoryIndex,
    int listId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryIndex_listId',
        lower: [categoryIndex, listId],
        includeLower: include,
        upper: [categoryIndex],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause>
      categoryIndexEqualToListIdLessThan(
    int categoryIndex,
    int listId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryIndex_listId',
        lower: [categoryIndex],
        upper: [categoryIndex, listId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> categoryIndexEqualToListIdBetween(
    int categoryIndex,
    int lowerListId,
    int upperListId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryIndex_listId',
        lower: [categoryIndex, lowerListId],
        includeLower: includeLower,
        upper: [categoryIndex, upperListId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> checkedIndexEqualToAnyListId(
      int checkedIndex) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'checkedIndex_listId',
        value: [checkedIndex],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> checkedIndexNotEqualToAnyListId(
      int checkedIndex) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedIndex_listId',
              lower: [],
              upper: [checkedIndex],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedIndex_listId',
              lower: [checkedIndex],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedIndex_listId',
              lower: [checkedIndex],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedIndex_listId',
              lower: [],
              upper: [checkedIndex],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> checkedIndexGreaterThanAnyListId(
    int checkedIndex, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedIndex_listId',
        lower: [checkedIndex],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> checkedIndexLessThanAnyListId(
    int checkedIndex, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedIndex_listId',
        lower: [],
        upper: [checkedIndex],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> checkedIndexBetweenAnyListId(
    int lowerCheckedIndex,
    int upperCheckedIndex, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedIndex_listId',
        lower: [lowerCheckedIndex],
        includeLower: includeLower,
        upper: [upperCheckedIndex],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> checkedIndexListIdEqualTo(
      int checkedIndex, int listId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'checkedIndex_listId',
        value: [checkedIndex, listId],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause>
      checkedIndexEqualToListIdNotEqualTo(int checkedIndex, int listId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedIndex_listId',
              lower: [checkedIndex],
              upper: [checkedIndex, listId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedIndex_listId',
              lower: [checkedIndex, listId],
              includeLower: false,
              upper: [checkedIndex],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedIndex_listId',
              lower: [checkedIndex, listId],
              includeLower: false,
              upper: [checkedIndex],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedIndex_listId',
              lower: [checkedIndex],
              upper: [checkedIndex, listId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause>
      checkedIndexEqualToListIdGreaterThan(
    int checkedIndex,
    int listId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedIndex_listId',
        lower: [checkedIndex, listId],
        includeLower: include,
        upper: [checkedIndex],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> checkedIndexEqualToListIdLessThan(
    int checkedIndex,
    int listId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedIndex_listId',
        lower: [checkedIndex],
        upper: [checkedIndex, listId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> checkedIndexEqualToListIdBetween(
    int checkedIndex,
    int lowerListId,
    int upperListId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedIndex_listId',
        lower: [checkedIndex, lowerListId],
        includeLower: includeLower,
        upper: [checkedIndex, upperListId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ItemQueryFilter on QueryBuilder<Item, Item, QFilterCondition> {
  QueryBuilder<Item, Item, QAfterFilterCondition> categoryEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoryGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoryLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoryBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoryIndexEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoryIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoryIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoryIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checkedAt',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checkedAt',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checkedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checkedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checkedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedIndexEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkedIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checkedIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checkedIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> checkedIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checkedIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> isCheckedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isChecked',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> listIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listId',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> listIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listId',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> listIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listId',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> listIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> orderInCategoryEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderInCategory',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> orderInCategoryGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderInCategory',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> orderInCategoryLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderInCategory',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> orderInCategoryBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderInCategory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ItemQueryObject on QueryBuilder<Item, Item, QFilterCondition> {}

extension ItemQueryLinks on QueryBuilder<Item, Item, QFilterCondition> {}

extension ItemQuerySortBy on QueryBuilder<Item, Item, QSortBy> {
  QueryBuilder<Item, Item, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCategoryIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryIndex', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCategoryIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryIndex', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCheckedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedAt', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCheckedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedAt', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCheckedIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedIndex', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCheckedIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedIndex', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByIsChecked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isChecked', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByIsCheckedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isChecked', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listId', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByListIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listId', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByOrderInCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderInCategory', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByOrderInCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderInCategory', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ItemQuerySortThenBy on QueryBuilder<Item, Item, QSortThenBy> {
  QueryBuilder<Item, Item, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCategoryIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryIndex', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCategoryIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryIndex', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCheckedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedAt', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCheckedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedAt', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCheckedIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedIndex', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCheckedIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedIndex', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByIsChecked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isChecked', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByIsCheckedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isChecked', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listId', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByListIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listId', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByOrderInCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderInCategory', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByOrderInCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderInCategory', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ItemQueryWhereDistinct on QueryBuilder<Item, Item, QDistinct> {
  QueryBuilder<Item, Item, QDistinct> distinctByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByCategoryIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryIndex');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByCheckedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkedAt');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByCheckedIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkedIndex');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByIsChecked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isChecked');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listId');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByOrderInCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderInCategory');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension ItemQueryProperty on QueryBuilder<Item, Item, QQueryProperty> {
  QueryBuilder<Item, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Item, int, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<Item, int, QQueryOperations> categoryIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryIndex');
    });
  }

  QueryBuilder<Item, DateTime?, QQueryOperations> checkedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkedAt');
    });
  }

  QueryBuilder<Item, int, QQueryOperations> checkedIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkedIndex');
    });
  }

  QueryBuilder<Item, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Item, bool, QQueryOperations> isCheckedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isChecked');
    });
  }

  QueryBuilder<Item, int, QQueryOperations> listIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listId');
    });
  }

  QueryBuilder<Item, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Item, int, QQueryOperations> orderInCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderInCategory');
    });
  }

  QueryBuilder<Item, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReminderCollection on Isar {
  IsarCollection<Reminder> get reminders => this.collection();
}

const ReminderSchema = CollectionSchema(
  name: r'Reminder',
  id: -8566764253612256045,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'enabled': PropertySchema(
      id: 1,
      name: r'enabled',
      type: IsarType.bool,
    ),
    r'listId': PropertySchema(
      id: 2,
      name: r'listId',
      type: IsarType.long,
    ),
    r'notificationId': PropertySchema(
      id: 3,
      name: r'notificationId',
      type: IsarType.long,
    ),
    r'oneTimeAt': PropertySchema(
      id: 4,
      name: r'oneTimeAt',
      type: IsarType.dateTime,
    ),
    r'type': PropertySchema(
      id: 5,
      name: r'type',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 6,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'weeklyDay': PropertySchema(
      id: 7,
      name: r'weeklyDay',
      type: IsarType.long,
    ),
    r'weeklyTimeMinutes': PropertySchema(
      id: 8,
      name: r'weeklyTimeMinutes',
      type: IsarType.long,
    )
  },
  estimateSize: _reminderEstimateSize,
  serialize: _reminderSerialize,
  deserialize: _reminderDeserialize,
  deserializeProp: _reminderDeserializeProp,
  idName: r'id',
  indexes: {
    r'listId': IndexSchema(
      id: -4312380808616005139,
      name: r'listId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'listId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _reminderGetId,
  getLinks: _reminderGetLinks,
  attach: _reminderAttach,
  version: '3.1.0+1',
);

int _reminderEstimateSize(
  Reminder object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _reminderSerialize(
  Reminder object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeBool(offsets[1], object.enabled);
  writer.writeLong(offsets[2], object.listId);
  writer.writeLong(offsets[3], object.notificationId);
  writer.writeDateTime(offsets[4], object.oneTimeAt);
  writer.writeLong(offsets[5], object.type);
  writer.writeDateTime(offsets[6], object.updatedAt);
  writer.writeLong(offsets[7], object.weeklyDay);
  writer.writeLong(offsets[8], object.weeklyTimeMinutes);
}

Reminder _reminderDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Reminder();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.enabled = reader.readBool(offsets[1]);
  object.id = id;
  object.listId = reader.readLong(offsets[2]);
  object.notificationId = reader.readLong(offsets[3]);
  object.oneTimeAt = reader.readDateTimeOrNull(offsets[4]);
  object.type = reader.readLong(offsets[5]);
  object.updatedAt = reader.readDateTime(offsets[6]);
  object.weeklyDay = reader.readLongOrNull(offsets[7]);
  object.weeklyTimeMinutes = reader.readLongOrNull(offsets[8]);
  return object;
}

P _reminderDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _reminderGetId(Reminder object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _reminderGetLinks(Reminder object) {
  return [];
}

void _reminderAttach(IsarCollection<dynamic> col, Id id, Reminder object) {
  object.id = id;
}

extension ReminderByIndex on IsarCollection<Reminder> {
  Future<Reminder?> getByListId(int listId) {
    return getByIndex(r'listId', [listId]);
  }

  Reminder? getByListIdSync(int listId) {
    return getByIndexSync(r'listId', [listId]);
  }

  Future<bool> deleteByListId(int listId) {
    return deleteByIndex(r'listId', [listId]);
  }

  bool deleteByListIdSync(int listId) {
    return deleteByIndexSync(r'listId', [listId]);
  }

  Future<List<Reminder?>> getAllByListId(List<int> listIdValues) {
    final values = listIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'listId', values);
  }

  List<Reminder?> getAllByListIdSync(List<int> listIdValues) {
    final values = listIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'listId', values);
  }

  Future<int> deleteAllByListId(List<int> listIdValues) {
    final values = listIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'listId', values);
  }

  int deleteAllByListIdSync(List<int> listIdValues) {
    final values = listIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'listId', values);
  }

  Future<Id> putByListId(Reminder object) {
    return putByIndex(r'listId', object);
  }

  Id putByListIdSync(Reminder object, {bool saveLinks = true}) {
    return putByIndexSync(r'listId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByListId(List<Reminder> objects) {
    return putAllByIndex(r'listId', objects);
  }

  List<Id> putAllByListIdSync(List<Reminder> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'listId', objects, saveLinks: saveLinks);
  }
}

extension ReminderQueryWhereSort on QueryBuilder<Reminder, Reminder, QWhere> {
  QueryBuilder<Reminder, Reminder, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhere> anyListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'listId'),
      );
    });
  }
}

extension ReminderQueryWhere on QueryBuilder<Reminder, Reminder, QWhereClause> {
  QueryBuilder<Reminder, Reminder, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhereClause> listIdEqualTo(
      int listId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'listId',
        value: [listId],
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhereClause> listIdNotEqualTo(
      int listId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'listId',
              lower: [],
              upper: [listId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'listId',
              lower: [listId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'listId',
              lower: [listId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'listId',
              lower: [],
              upper: [listId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhereClause> listIdGreaterThan(
    int listId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'listId',
        lower: [listId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhereClause> listIdLessThan(
    int listId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'listId',
        lower: [],
        upper: [listId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterWhereClause> listIdBetween(
    int lowerListId,
    int upperListId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'listId',
        lower: [lowerListId],
        includeLower: includeLower,
        upper: [upperListId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ReminderQueryFilter
    on QueryBuilder<Reminder, Reminder, QFilterCondition> {
  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> enabledEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enabled',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> listIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listId',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> listIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listId',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> listIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listId',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> listIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> notificationIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition>
      notificationIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition>
      notificationIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> notificationIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notificationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> oneTimeAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'oneTimeAt',
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> oneTimeAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'oneTimeAt',
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> oneTimeAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'oneTimeAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> oneTimeAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'oneTimeAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> oneTimeAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'oneTimeAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> oneTimeAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'oneTimeAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> typeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> typeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> typeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> typeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> weeklyDayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weeklyDay',
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> weeklyDayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weeklyDay',
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> weeklyDayEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weeklyDay',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> weeklyDayGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weeklyDay',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> weeklyDayLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weeklyDay',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition> weeklyDayBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weeklyDay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition>
      weeklyTimeMinutesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weeklyTimeMinutes',
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition>
      weeklyTimeMinutesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weeklyTimeMinutes',
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition>
      weeklyTimeMinutesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weeklyTimeMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition>
      weeklyTimeMinutesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weeklyTimeMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition>
      weeklyTimeMinutesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weeklyTimeMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterFilterCondition>
      weeklyTimeMinutesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weeklyTimeMinutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ReminderQueryObject
    on QueryBuilder<Reminder, Reminder, QFilterCondition> {}

extension ReminderQueryLinks
    on QueryBuilder<Reminder, Reminder, QFilterCondition> {}

extension ReminderQuerySortBy on QueryBuilder<Reminder, Reminder, QSortBy> {
  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listId', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByListIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listId', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByNotificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationId', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByNotificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationId', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByOneTimeAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oneTimeAt', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByOneTimeAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oneTimeAt', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByWeeklyDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weeklyDay', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByWeeklyDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weeklyDay', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByWeeklyTimeMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weeklyTimeMinutes', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> sortByWeeklyTimeMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weeklyTimeMinutes', Sort.desc);
    });
  }
}

extension ReminderQuerySortThenBy
    on QueryBuilder<Reminder, Reminder, QSortThenBy> {
  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listId', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByListIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listId', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByNotificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationId', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByNotificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationId', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByOneTimeAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oneTimeAt', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByOneTimeAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oneTimeAt', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByWeeklyDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weeklyDay', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByWeeklyDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weeklyDay', Sort.desc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByWeeklyTimeMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weeklyTimeMinutes', Sort.asc);
    });
  }

  QueryBuilder<Reminder, Reminder, QAfterSortBy> thenByWeeklyTimeMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weeklyTimeMinutes', Sort.desc);
    });
  }
}

extension ReminderQueryWhereDistinct
    on QueryBuilder<Reminder, Reminder, QDistinct> {
  QueryBuilder<Reminder, Reminder, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Reminder, Reminder, QDistinct> distinctByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enabled');
    });
  }

  QueryBuilder<Reminder, Reminder, QDistinct> distinctByListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listId');
    });
  }

  QueryBuilder<Reminder, Reminder, QDistinct> distinctByNotificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notificationId');
    });
  }

  QueryBuilder<Reminder, Reminder, QDistinct> distinctByOneTimeAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'oneTimeAt');
    });
  }

  QueryBuilder<Reminder, Reminder, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<Reminder, Reminder, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<Reminder, Reminder, QDistinct> distinctByWeeklyDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weeklyDay');
    });
  }

  QueryBuilder<Reminder, Reminder, QDistinct> distinctByWeeklyTimeMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weeklyTimeMinutes');
    });
  }
}

extension ReminderQueryProperty
    on QueryBuilder<Reminder, Reminder, QQueryProperty> {
  QueryBuilder<Reminder, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Reminder, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Reminder, bool, QQueryOperations> enabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enabled');
    });
  }

  QueryBuilder<Reminder, int, QQueryOperations> listIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listId');
    });
  }

  QueryBuilder<Reminder, int, QQueryOperations> notificationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notificationId');
    });
  }

  QueryBuilder<Reminder, DateTime?, QQueryOperations> oneTimeAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'oneTimeAt');
    });
  }

  QueryBuilder<Reminder, int, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Reminder, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<Reminder, int?, QQueryOperations> weeklyDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weeklyDay');
    });
  }

  QueryBuilder<Reminder, int?, QQueryOperations> weeklyTimeMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weeklyTimeMinutes');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppSettingsCollection on Isar {
  IsarCollection<AppSettings> get appSettings => this.collection();
}

const AppSettingsSchema = CollectionSchema(
  name: r'AppSettings',
  id: -5633561779022347008,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'directionMode': PropertySchema(
      id: 1,
      name: r'directionMode',
      type: IsarType.long,
    ),
    r'languageCode': PropertySchema(
      id: 2,
      name: r'languageCode',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 3,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _appSettingsEstimateSize,
  serialize: _appSettingsSerialize,
  deserialize: _appSettingsDeserialize,
  deserializeProp: _appSettingsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appSettingsGetId,
  getLinks: _appSettingsGetLinks,
  attach: _appSettingsAttach,
  version: '3.1.0+1',
);

int _appSettingsEstimateSize(
  AppSettings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.languageCode.length * 3;
  return bytesCount;
}

void _appSettingsSerialize(
  AppSettings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeLong(offsets[1], object.directionMode);
  writer.writeString(offsets[2], object.languageCode);
  writer.writeDateTime(offsets[3], object.updatedAt);
}

AppSettings _appSettingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppSettings();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.directionMode = reader.readLong(offsets[1]);
  object.id = id;
  object.languageCode = reader.readString(offsets[2]);
  object.updatedAt = reader.readDateTime(offsets[3]);
  return object;
}

P _appSettingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appSettingsGetId(AppSettings object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appSettingsGetLinks(AppSettings object) {
  return [];
}

void _appSettingsAttach(
    IsarCollection<dynamic> col, Id id, AppSettings object) {
  object.id = id;
}

extension AppSettingsQueryWhereSort
    on QueryBuilder<AppSettings, AppSettings, QWhere> {
  QueryBuilder<AppSettings, AppSettings, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppSettingsQueryWhere
    on QueryBuilder<AppSettings, AppSettings, QWhereClause> {
  QueryBuilder<AppSettings, AppSettings, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppSettingsQueryFilter
    on QueryBuilder<AppSettings, AppSettings, QFilterCondition> {
  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      directionModeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'directionMode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      directionModeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'directionMode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      directionModeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'directionMode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      directionModeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'directionMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'languageCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'languageCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      languageCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppSettingsQueryObject
    on QueryBuilder<AppSettings, AppSettings, QFilterCondition> {}

extension AppSettingsQueryLinks
    on QueryBuilder<AppSettings, AppSettings, QFilterCondition> {}

extension AppSettingsQuerySortBy
    on QueryBuilder<AppSettings, AppSettings, QSortBy> {
  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> sortByDirectionMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directionMode', Sort.asc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy>
      sortByDirectionModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directionMode', Sort.desc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> sortByLanguageCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.asc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy>
      sortByLanguageCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.desc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension AppSettingsQuerySortThenBy
    on QueryBuilder<AppSettings, AppSettings, QSortThenBy> {
  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> thenByDirectionMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directionMode', Sort.asc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy>
      thenByDirectionModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directionMode', Sort.desc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> thenByLanguageCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.asc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy>
      thenByLanguageCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.desc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension AppSettingsQueryWhereDistinct
    on QueryBuilder<AppSettings, AppSettings, QDistinct> {
  QueryBuilder<AppSettings, AppSettings, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<AppSettings, AppSettings, QDistinct> distinctByDirectionMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'directionMode');
    });
  }

  QueryBuilder<AppSettings, AppSettings, QDistinct> distinctByLanguageCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'languageCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppSettings, AppSettings, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension AppSettingsQueryProperty
    on QueryBuilder<AppSettings, AppSettings, QQueryProperty> {
  QueryBuilder<AppSettings, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppSettings, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<AppSettings, int, QQueryOperations> directionModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'directionMode');
    });
  }

  QueryBuilder<AppSettings, String, QQueryOperations> languageCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'languageCode');
    });
  }

  QueryBuilder<AppSettings, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTipStatusCollection on Isar {
  IsarCollection<TipStatus> get tipStatus => this.collection();
}

const TipStatusSchema = CollectionSchema(
  name: r'TipStatus',
  id: 3986660238261379357,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'hasTipped': PropertySchema(
      id: 1,
      name: r'hasTipped',
      type: IsarType.bool,
    ),
    r'lastTipAt': PropertySchema(
      id: 2,
      name: r'lastTipAt',
      type: IsarType.dateTime,
    ),
    r'tipLevel': PropertySchema(
      id: 3,
      name: r'tipLevel',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 4,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _tipStatusEstimateSize,
  serialize: _tipStatusSerialize,
  deserialize: _tipStatusDeserialize,
  deserializeProp: _tipStatusDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tipStatusGetId,
  getLinks: _tipStatusGetLinks,
  attach: _tipStatusAttach,
  version: '3.1.0+1',
);

int _tipStatusEstimateSize(
  TipStatus object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _tipStatusSerialize(
  TipStatus object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeBool(offsets[1], object.hasTipped);
  writer.writeDateTime(offsets[2], object.lastTipAt);
  writer.writeLong(offsets[3], object.tipLevel);
  writer.writeDateTime(offsets[4], object.updatedAt);
}

TipStatus _tipStatusDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TipStatus();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.hasTipped = reader.readBool(offsets[1]);
  object.id = id;
  object.lastTipAt = reader.readDateTimeOrNull(offsets[2]);
  object.tipLevel = reader.readLong(offsets[3]);
  object.updatedAt = reader.readDateTime(offsets[4]);
  return object;
}

P _tipStatusDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tipStatusGetId(TipStatus object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tipStatusGetLinks(TipStatus object) {
  return [];
}

void _tipStatusAttach(IsarCollection<dynamic> col, Id id, TipStatus object) {
  object.id = id;
}

extension TipStatusQueryWhereSort
    on QueryBuilder<TipStatus, TipStatus, QWhere> {
  QueryBuilder<TipStatus, TipStatus, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TipStatusQueryWhere
    on QueryBuilder<TipStatus, TipStatus, QWhereClause> {
  QueryBuilder<TipStatus, TipStatus, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TipStatusQueryFilter
    on QueryBuilder<TipStatus, TipStatus, QFilterCondition> {
  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> hasTippedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasTipped',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> lastTipAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastTipAt',
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition>
      lastTipAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastTipAt',
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> lastTipAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastTipAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition>
      lastTipAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastTipAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> lastTipAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastTipAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> lastTipAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastTipAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> tipLevelEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> tipLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> tipLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> tipLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TipStatusQueryObject
    on QueryBuilder<TipStatus, TipStatus, QFilterCondition> {}

extension TipStatusQueryLinks
    on QueryBuilder<TipStatus, TipStatus, QFilterCondition> {}

extension TipStatusQuerySortBy on QueryBuilder<TipStatus, TipStatus, QSortBy> {
  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByHasTipped() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasTipped', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByHasTippedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasTipped', Sort.desc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByLastTipAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastTipAt', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByLastTipAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastTipAt', Sort.desc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByTipLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipLevel', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByTipLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipLevel', Sort.desc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension TipStatusQuerySortThenBy
    on QueryBuilder<TipStatus, TipStatus, QSortThenBy> {
  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByHasTipped() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasTipped', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByHasTippedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasTipped', Sort.desc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByLastTipAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastTipAt', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByLastTipAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastTipAt', Sort.desc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByTipLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipLevel', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByTipLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipLevel', Sort.desc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TipStatus, TipStatus, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension TipStatusQueryWhereDistinct
    on QueryBuilder<TipStatus, TipStatus, QDistinct> {
  QueryBuilder<TipStatus, TipStatus, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<TipStatus, TipStatus, QDistinct> distinctByHasTipped() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hasTipped');
    });
  }

  QueryBuilder<TipStatus, TipStatus, QDistinct> distinctByLastTipAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastTipAt');
    });
  }

  QueryBuilder<TipStatus, TipStatus, QDistinct> distinctByTipLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipLevel');
    });
  }

  QueryBuilder<TipStatus, TipStatus, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension TipStatusQueryProperty
    on QueryBuilder<TipStatus, TipStatus, QQueryProperty> {
  QueryBuilder<TipStatus, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TipStatus, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<TipStatus, bool, QQueryOperations> hasTippedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hasTipped');
    });
  }

  QueryBuilder<TipStatus, DateTime?, QQueryOperations> lastTipAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastTipAt');
    });
  }

  QueryBuilder<TipStatus, int, QQueryOperations> tipLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipLevel');
    });
  }

  QueryBuilder<TipStatus, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
