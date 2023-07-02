// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReportCollection on Isar {
  IsarCollection<Report> get reports => this.collection();
}

const ReportSchema = CollectionSchema(
  name: r'Report',
  id: 4107730612455750309,
  properties: {
    r'bibleStudies': PropertySchema(
      id: 0,
      name: r'bibleStudies',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'hours': PropertySchema(
      id: 2,
      name: r'hours',
      type: IsarType.long,
    ),
    r'month': PropertySchema(
      id: 3,
      name: r'month',
      type: IsarType.long,
    ),
    r'publications': PropertySchema(
      id: 4,
      name: r'publications',
      type: IsarType.long,
    ),
    r'returnVisits': PropertySchema(
      id: 5,
      name: r'returnVisits',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 6,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'videos': PropertySchema(
      id: 7,
      name: r'videos',
      type: IsarType.long,
    ),
    r'year': PropertySchema(
      id: 8,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _reportEstimateSize,
  serialize: _reportSerialize,
  deserialize: _reportDeserialize,
  deserializeProp: _reportDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _reportGetId,
  getLinks: _reportGetLinks,
  attach: _reportAttach,
  version: '3.1.0+1',
);

int _reportEstimateSize(
  Report object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _reportSerialize(
  Report object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bibleStudies);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeLong(offsets[2], object.hours);
  writer.writeLong(offsets[3], object.month);
  writer.writeLong(offsets[4], object.publications);
  writer.writeLong(offsets[5], object.returnVisits);
  writer.writeDateTime(offsets[6], object.updatedAt);
  writer.writeLong(offsets[7], object.videos);
  writer.writeLong(offsets[8], object.year);
}

Report _reportDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Report();
  object.bibleStudies = reader.readLongOrNull(offsets[0]);
  object.createdAt = reader.readDateTimeOrNull(offsets[1]);
  object.hours = reader.readLongOrNull(offsets[2]);
  object.id = id;
  object.month = reader.readLongOrNull(offsets[3]);
  object.publications = reader.readLongOrNull(offsets[4]);
  object.returnVisits = reader.readLongOrNull(offsets[5]);
  object.updatedAt = reader.readDateTimeOrNull(offsets[6]);
  object.videos = reader.readLongOrNull(offsets[7]);
  object.year = reader.readLongOrNull(offsets[8]);
  return object;
}

P _reportDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _reportGetId(Report object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _reportGetLinks(Report object) {
  return [];
}

void _reportAttach(IsarCollection<dynamic> col, Id id, Report object) {
  object.id = id;
}

extension ReportQueryWhereSort on QueryBuilder<Report, Report, QWhere> {
  QueryBuilder<Report, Report, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ReportQueryWhere on QueryBuilder<Report, Report, QWhereClause> {
  QueryBuilder<Report, Report, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Report, Report, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Report, Report, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Report, Report, QAfterWhereClause> idBetween(
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

extension ReportQueryFilter on QueryBuilder<Report, Report, QFilterCondition> {
  QueryBuilder<Report, Report, QAfterFilterCondition> bibleStudiesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bibleStudies',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> bibleStudiesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bibleStudies',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> bibleStudiesEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bibleStudies',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> bibleStudiesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bibleStudies',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> bibleStudiesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bibleStudies',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> bibleStudiesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bibleStudies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> createdAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<Report, Report, QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
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

  QueryBuilder<Report, Report, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<Report, Report, QAfterFilterCondition> hoursIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hours',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> hoursIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hours',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> hoursEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hours',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> hoursGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hours',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> hoursLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hours',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> hoursBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Report, Report, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Report, Report, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Report, Report, QAfterFilterCondition> monthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'month',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> monthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'month',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> monthEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'month',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> monthGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'month',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> monthLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'month',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> monthBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'month',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> publicationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'publications',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> publicationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'publications',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> publicationsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'publications',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> publicationsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'publications',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> publicationsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'publications',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> publicationsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'publications',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> returnVisitsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'returnVisits',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> returnVisitsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'returnVisits',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> returnVisitsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnVisits',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> returnVisitsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'returnVisits',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> returnVisitsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'returnVisits',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> returnVisitsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'returnVisits',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<Report, Report, QAfterFilterCondition> updatedAtLessThan(
    DateTime? value, {
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

  QueryBuilder<Report, Report, QAfterFilterCondition> updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<Report, Report, QAfterFilterCondition> videosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'videos',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> videosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'videos',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> videosEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videos',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> videosGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'videos',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> videosLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'videos',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> videosBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'videos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> yearIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'year',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> yearIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'year',
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> yearEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> yearGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> yearLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<Report, Report, QAfterFilterCondition> yearBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'year',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ReportQueryObject on QueryBuilder<Report, Report, QFilterCondition> {}

extension ReportQueryLinks on QueryBuilder<Report, Report, QFilterCondition> {}

extension ReportQuerySortBy on QueryBuilder<Report, Report, QSortBy> {
  QueryBuilder<Report, Report, QAfterSortBy> sortByBibleStudies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bibleStudies', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByBibleStudiesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bibleStudies', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hours', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hours', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'month', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByMonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'month', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByPublications() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publications', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByPublicationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publications', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByReturnVisits() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returnVisits', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByReturnVisitsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returnVisits', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByVideos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videos', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByVideosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videos', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension ReportQuerySortThenBy on QueryBuilder<Report, Report, QSortThenBy> {
  QueryBuilder<Report, Report, QAfterSortBy> thenByBibleStudies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bibleStudies', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByBibleStudiesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bibleStudies', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hours', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hours', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'month', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByMonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'month', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByPublications() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publications', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByPublicationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publications', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByReturnVisits() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returnVisits', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByReturnVisitsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returnVisits', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByVideos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videos', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByVideosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videos', Sort.desc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<Report, Report, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension ReportQueryWhereDistinct on QueryBuilder<Report, Report, QDistinct> {
  QueryBuilder<Report, Report, QDistinct> distinctByBibleStudies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bibleStudies');
    });
  }

  QueryBuilder<Report, Report, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Report, Report, QDistinct> distinctByHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hours');
    });
  }

  QueryBuilder<Report, Report, QDistinct> distinctByMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'month');
    });
  }

  QueryBuilder<Report, Report, QDistinct> distinctByPublications() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'publications');
    });
  }

  QueryBuilder<Report, Report, QDistinct> distinctByReturnVisits() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'returnVisits');
    });
  }

  QueryBuilder<Report, Report, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<Report, Report, QDistinct> distinctByVideos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'videos');
    });
  }

  QueryBuilder<Report, Report, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension ReportQueryProperty on QueryBuilder<Report, Report, QQueryProperty> {
  QueryBuilder<Report, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Report, int?, QQueryOperations> bibleStudiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bibleStudies');
    });
  }

  QueryBuilder<Report, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Report, int?, QQueryOperations> hoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hours');
    });
  }

  QueryBuilder<Report, int?, QQueryOperations> monthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'month');
    });
  }

  QueryBuilder<Report, int?, QQueryOperations> publicationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'publications');
    });
  }

  QueryBuilder<Report, int?, QQueryOperations> returnVisitsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'returnVisits');
    });
  }

  QueryBuilder<Report, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<Report, int?, QQueryOperations> videosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'videos');
    });
  }

  QueryBuilder<Report, int?, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
