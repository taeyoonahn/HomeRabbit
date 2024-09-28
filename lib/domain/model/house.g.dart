// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetHouseCollection on Isar {
  IsarCollection<House> get houses => this.collection();
}

const HouseSchema = CollectionSchema(
  name: r'House',
  id: 4171657115034592655,
  properties: {
    r'deposit': PropertySchema(
      id: 0,
      name: r'deposit',
      type: IsarType.double,
    ),
    r'houseName': PropertySchema(
      id: 1,
      name: r'houseName',
      type: IsarType.string,
    ),
    r'isAgentScam': PropertySchema(
      id: 2,
      name: r'isAgentScam',
      type: IsarType.long,
    ),
    r'isDiscriminated': PropertySchema(
      id: 3,
      name: r'isDiscriminated',
      type: IsarType.bool,
    ),
    r'isDoubleAgent': PropertySchema(
      id: 4,
      name: r'isDoubleAgent',
      type: IsarType.long,
    ),
    r'isDuplicateContract': PropertySchema(
      id: 5,
      name: r'isDuplicateContract',
      type: IsarType.long,
    ),
    r'isFinancialRisk': PropertySchema(
      id: 6,
      name: r'isFinancialRisk',
      type: IsarType.long,
    ),
    r'isIllegalBuilding': PropertySchema(
      id: 7,
      name: r'isIllegalBuilding',
      type: IsarType.long,
    ),
    r'isNoInsurance': PropertySchema(
      id: 8,
      name: r'isNoInsurance',
      type: IsarType.long,
    ),
    r'isTaxEvasion': PropertySchema(
      id: 9,
      name: r'isTaxEvasion',
      type: IsarType.long,
    ),
    r'isTrustCompany': PropertySchema(
      id: 10,
      name: r'isTrustCompany',
      type: IsarType.long,
    ),
    r'marketPrice': PropertySchema(
      id: 11,
      name: r'marketPrice',
      type: IsarType.double,
    ),
    r'mortgage': PropertySchema(
      id: 12,
      name: r'mortgage',
      type: IsarType.double,
    ),
    r'priority': PropertySchema(
      id: 13,
      name: r'priority',
      type: IsarType.double,
    ),
    r'rank': PropertySchema(
      id: 14,
      name: r'rank',
      type: IsarType.string,
    ),
    r'recordDate': PropertySchema(
      id: 15,
      name: r'recordDate',
      type: IsarType.dateTime,
    ),
    r'seniorDeposit': PropertySchema(
      id: 16,
      name: r'seniorDeposit',
      type: IsarType.double,
    )
  },
  estimateSize: _houseEstimateSize,
  serialize: _houseSerialize,
  deserialize: _houseDeserialize,
  deserializeProp: _houseDeserializeProp,
  idName: r'id',
  indexes: {
    r'houseName': IndexSchema(
      id: 2910681321951549372,
      name: r'houseName',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'houseName',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'rank': IndexSchema(
      id: 432257220865207671,
      name: r'rank',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'rank',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'marketPrice': IndexSchema(
      id: 8737094461010433777,
      name: r'marketPrice',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'marketPrice',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'mortgage': IndexSchema(
      id: 1542060054358419274,
      name: r'mortgage',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'mortgage',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'seniorDeposit': IndexSchema(
      id: 6160449818512062086,
      name: r'seniorDeposit',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'seniorDeposit',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'deposit': IndexSchema(
      id: -3636407042674962908,
      name: r'deposit',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'deposit',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'priority': IndexSchema(
      id: -6477851841645083544,
      name: r'priority',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'priority',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isDiscriminated': IndexSchema(
      id: 3189396460988860323,
      name: r'isDiscriminated',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isDiscriminated',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isDoubleAgent': IndexSchema(
      id: 2212577161243297255,
      name: r'isDoubleAgent',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isDoubleAgent',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isDuplicateContract': IndexSchema(
      id: -3878483473737090208,
      name: r'isDuplicateContract',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isDuplicateContract',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isFinancialRisk': IndexSchema(
      id: -2388336535734992715,
      name: r'isFinancialRisk',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isFinancialRisk',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isIllegalBuilding': IndexSchema(
      id: -854566471788345152,
      name: r'isIllegalBuilding',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isIllegalBuilding',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isNoInsurance': IndexSchema(
      id: -4175375426386418277,
      name: r'isNoInsurance',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isNoInsurance',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isAgentScam': IndexSchema(
      id: -3952110425805523442,
      name: r'isAgentScam',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isAgentScam',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isTrustCompany': IndexSchema(
      id: 9125417337672530811,
      name: r'isTrustCompany',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isTrustCompany',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isTaxEvasion': IndexSchema(
      id: -5815989611106060369,
      name: r'isTaxEvasion',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isTaxEvasion',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _houseGetId,
  getLinks: _houseGetLinks,
  attach: _houseAttach,
  version: '3.1.0+1',
);

int _houseEstimateSize(
  House object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.houseName.length * 3;
  bytesCount += 3 + object.rank.length * 3;
  return bytesCount;
}

void _houseSerialize(
  House object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.deposit);
  writer.writeString(offsets[1], object.houseName);
  writer.writeLong(offsets[2], object.isAgentScam);
  writer.writeBool(offsets[3], object.isDiscriminated);
  writer.writeLong(offsets[4], object.isDoubleAgent);
  writer.writeLong(offsets[5], object.isDuplicateContract);
  writer.writeLong(offsets[6], object.isFinancialRisk);
  writer.writeLong(offsets[7], object.isIllegalBuilding);
  writer.writeLong(offsets[8], object.isNoInsurance);
  writer.writeLong(offsets[9], object.isTaxEvasion);
  writer.writeLong(offsets[10], object.isTrustCompany);
  writer.writeDouble(offsets[11], object.marketPrice);
  writer.writeDouble(offsets[12], object.mortgage);
  writer.writeDouble(offsets[13], object.priority);
  writer.writeString(offsets[14], object.rank);
  writer.writeDateTime(offsets[15], object.recordDate);
  writer.writeDouble(offsets[16], object.seniorDeposit);
}

House _houseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = House(
    deposit: reader.readDoubleOrNull(offsets[0]) ?? 0,
    houseName: reader.readString(offsets[1]),
    isAgentScam: reader.readLongOrNull(offsets[2]) ?? 2,
    isDiscriminated: reader.readBoolOrNull(offsets[3]) ?? false,
    isDoubleAgent: reader.readLongOrNull(offsets[4]) ?? 2,
    isDuplicateContract: reader.readLongOrNull(offsets[5]) ?? 2,
    isFinancialRisk: reader.readLongOrNull(offsets[6]) ?? 2,
    isIllegalBuilding: reader.readLongOrNull(offsets[7]) ?? 2,
    isNoInsurance: reader.readLongOrNull(offsets[8]) ?? 2,
    isTaxEvasion: reader.readLongOrNull(offsets[9]) ?? 2,
    isTrustCompany: reader.readLongOrNull(offsets[10]) ?? 2,
    marketPrice: reader.readDoubleOrNull(offsets[11]) ?? 0,
    mortgage: reader.readDoubleOrNull(offsets[12]) ?? 0,
    priority: reader.readDoubleOrNull(offsets[13]) ?? 0,
    rank: reader.readStringOrNull(offsets[14]) ?? 'TBD',
    recordDate: reader.readDateTime(offsets[15]),
    seniorDeposit: reader.readDoubleOrNull(offsets[16]) ?? 0,
  );
  object.id = id;
  return object;
}

P _houseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 2) as P;
    case 3:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 2) as P;
    case 5:
      return (reader.readLongOrNull(offset) ?? 2) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 2) as P;
    case 7:
      return (reader.readLongOrNull(offset) ?? 2) as P;
    case 8:
      return (reader.readLongOrNull(offset) ?? 2) as P;
    case 9:
      return (reader.readLongOrNull(offset) ?? 2) as P;
    case 10:
      return (reader.readLongOrNull(offset) ?? 2) as P;
    case 11:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 12:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 13:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 14:
      return (reader.readStringOrNull(offset) ?? 'TBD') as P;
    case 15:
      return (reader.readDateTime(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _houseGetId(House object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _houseGetLinks(House object) {
  return [];
}

void _houseAttach(IsarCollection<dynamic> col, Id id, House object) {
  object.id = id;
}

extension HouseQueryWhereSort on QueryBuilder<House, House, QWhere> {
  QueryBuilder<House, House, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyHouseName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'houseName'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'rank'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyMarketPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'marketPrice'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyMortgage() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'mortgage'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anySeniorDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'seniorDeposit'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'deposit'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'priority'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyIsDiscriminated() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isDiscriminated'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyIsDoubleAgent() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isDoubleAgent'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyIsDuplicateContract() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isDuplicateContract'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyIsFinancialRisk() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isFinancialRisk'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyIsIllegalBuilding() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isIllegalBuilding'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyIsNoInsurance() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isNoInsurance'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyIsAgentScam() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isAgentScam'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyIsTrustCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isTrustCompany'),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhere> anyIsTaxEvasion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isTaxEvasion'),
      );
    });
  }
}

extension HouseQueryWhere on QueryBuilder<House, House, QWhereClause> {
  QueryBuilder<House, House, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<House, House, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> idBetween(
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

  QueryBuilder<House, House, QAfterWhereClause> houseNameEqualTo(
      String houseName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'houseName',
        value: [houseName],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> houseNameNotEqualTo(
      String houseName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'houseName',
              lower: [],
              upper: [houseName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'houseName',
              lower: [houseName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'houseName',
              lower: [houseName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'houseName',
              lower: [],
              upper: [houseName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> houseNameGreaterThan(
    String houseName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'houseName',
        lower: [houseName],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> houseNameLessThan(
    String houseName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'houseName',
        lower: [],
        upper: [houseName],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> houseNameBetween(
    String lowerHouseName,
    String upperHouseName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'houseName',
        lower: [lowerHouseName],
        includeLower: includeLower,
        upper: [upperHouseName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> houseNameStartsWith(
      String HouseNamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'houseName',
        lower: [HouseNamePrefix],
        upper: ['$HouseNamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> houseNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'houseName',
        value: [''],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> houseNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'houseName',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'houseName',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'houseName',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'houseName',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> rankEqualTo(String rank) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rank',
        value: [rank],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> rankNotEqualTo(String rank) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rank',
              lower: [],
              upper: [rank],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rank',
              lower: [rank],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rank',
              lower: [rank],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rank',
              lower: [],
              upper: [rank],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> rankGreaterThan(
    String rank, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rank',
        lower: [rank],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> rankLessThan(
    String rank, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rank',
        lower: [],
        upper: [rank],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> rankBetween(
    String lowerRank,
    String upperRank, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rank',
        lower: [lowerRank],
        includeLower: includeLower,
        upper: [upperRank],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> rankStartsWith(
      String RankPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rank',
        lower: [RankPrefix],
        upper: ['$RankPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> rankIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rank',
        value: [''],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> rankIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'rank',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'rank',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'rank',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'rank',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> marketPriceEqualTo(
      double marketPrice) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'marketPrice',
        value: [marketPrice],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> marketPriceNotEqualTo(
      double marketPrice) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'marketPrice',
              lower: [],
              upper: [marketPrice],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'marketPrice',
              lower: [marketPrice],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'marketPrice',
              lower: [marketPrice],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'marketPrice',
              lower: [],
              upper: [marketPrice],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> marketPriceGreaterThan(
    double marketPrice, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'marketPrice',
        lower: [marketPrice],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> marketPriceLessThan(
    double marketPrice, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'marketPrice',
        lower: [],
        upper: [marketPrice],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> marketPriceBetween(
    double lowerMarketPrice,
    double upperMarketPrice, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'marketPrice',
        lower: [lowerMarketPrice],
        includeLower: includeLower,
        upper: [upperMarketPrice],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> mortgageEqualTo(
      double mortgage) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mortgage',
        value: [mortgage],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> mortgageNotEqualTo(
      double mortgage) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mortgage',
              lower: [],
              upper: [mortgage],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mortgage',
              lower: [mortgage],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mortgage',
              lower: [mortgage],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mortgage',
              lower: [],
              upper: [mortgage],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> mortgageGreaterThan(
    double mortgage, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mortgage',
        lower: [mortgage],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> mortgageLessThan(
    double mortgage, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mortgage',
        lower: [],
        upper: [mortgage],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> mortgageBetween(
    double lowerMortgage,
    double upperMortgage, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mortgage',
        lower: [lowerMortgage],
        includeLower: includeLower,
        upper: [upperMortgage],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> seniorDepositEqualTo(
      double seniorDeposit) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'seniorDeposit',
        value: [seniorDeposit],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> seniorDepositNotEqualTo(
      double seniorDeposit) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'seniorDeposit',
              lower: [],
              upper: [seniorDeposit],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'seniorDeposit',
              lower: [seniorDeposit],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'seniorDeposit',
              lower: [seniorDeposit],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'seniorDeposit',
              lower: [],
              upper: [seniorDeposit],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> seniorDepositGreaterThan(
    double seniorDeposit, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'seniorDeposit',
        lower: [seniorDeposit],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> seniorDepositLessThan(
    double seniorDeposit, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'seniorDeposit',
        lower: [],
        upper: [seniorDeposit],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> seniorDepositBetween(
    double lowerSeniorDeposit,
    double upperSeniorDeposit, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'seniorDeposit',
        lower: [lowerSeniorDeposit],
        includeLower: includeLower,
        upper: [upperSeniorDeposit],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> depositEqualTo(double deposit) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'deposit',
        value: [deposit],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> depositNotEqualTo(
      double deposit) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deposit',
              lower: [],
              upper: [deposit],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deposit',
              lower: [deposit],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deposit',
              lower: [deposit],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deposit',
              lower: [],
              upper: [deposit],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> depositGreaterThan(
    double deposit, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'deposit',
        lower: [deposit],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> depositLessThan(
    double deposit, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'deposit',
        lower: [],
        upper: [deposit],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> depositBetween(
    double lowerDeposit,
    double upperDeposit, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'deposit',
        lower: [lowerDeposit],
        includeLower: includeLower,
        upper: [upperDeposit],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> priorityEqualTo(
      double priority) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'priority',
        value: [priority],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> priorityNotEqualTo(
      double priority) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'priority',
              lower: [],
              upper: [priority],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'priority',
              lower: [priority],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'priority',
              lower: [priority],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'priority',
              lower: [],
              upper: [priority],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> priorityGreaterThan(
    double priority, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'priority',
        lower: [priority],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> priorityLessThan(
    double priority, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'priority',
        lower: [],
        upper: [priority],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> priorityBetween(
    double lowerPriority,
    double upperPriority, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'priority',
        lower: [lowerPriority],
        includeLower: includeLower,
        upper: [upperPriority],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDiscriminatedEqualTo(
      bool isDiscriminated) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isDiscriminated',
        value: [isDiscriminated],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDiscriminatedNotEqualTo(
      bool isDiscriminated) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDiscriminated',
              lower: [],
              upper: [isDiscriminated],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDiscriminated',
              lower: [isDiscriminated],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDiscriminated',
              lower: [isDiscriminated],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDiscriminated',
              lower: [],
              upper: [isDiscriminated],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDoubleAgentEqualTo(
      int isDoubleAgent) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isDoubleAgent',
        value: [isDoubleAgent],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDoubleAgentNotEqualTo(
      int isDoubleAgent) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDoubleAgent',
              lower: [],
              upper: [isDoubleAgent],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDoubleAgent',
              lower: [isDoubleAgent],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDoubleAgent',
              lower: [isDoubleAgent],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDoubleAgent',
              lower: [],
              upper: [isDoubleAgent],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDoubleAgentGreaterThan(
    int isDoubleAgent, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isDoubleAgent',
        lower: [isDoubleAgent],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDoubleAgentLessThan(
    int isDoubleAgent, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isDoubleAgent',
        lower: [],
        upper: [isDoubleAgent],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDoubleAgentBetween(
    int lowerIsDoubleAgent,
    int upperIsDoubleAgent, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isDoubleAgent',
        lower: [lowerIsDoubleAgent],
        includeLower: includeLower,
        upper: [upperIsDoubleAgent],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDuplicateContractEqualTo(
      int isDuplicateContract) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isDuplicateContract',
        value: [isDuplicateContract],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDuplicateContractNotEqualTo(
      int isDuplicateContract) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDuplicateContract',
              lower: [],
              upper: [isDuplicateContract],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDuplicateContract',
              lower: [isDuplicateContract],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDuplicateContract',
              lower: [isDuplicateContract],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDuplicateContract',
              lower: [],
              upper: [isDuplicateContract],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDuplicateContractGreaterThan(
    int isDuplicateContract, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isDuplicateContract',
        lower: [isDuplicateContract],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDuplicateContractLessThan(
    int isDuplicateContract, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isDuplicateContract',
        lower: [],
        upper: [isDuplicateContract],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isDuplicateContractBetween(
    int lowerIsDuplicateContract,
    int upperIsDuplicateContract, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isDuplicateContract',
        lower: [lowerIsDuplicateContract],
        includeLower: includeLower,
        upper: [upperIsDuplicateContract],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isFinancialRiskEqualTo(
      int isFinancialRisk) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isFinancialRisk',
        value: [isFinancialRisk],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isFinancialRiskNotEqualTo(
      int isFinancialRisk) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isFinancialRisk',
              lower: [],
              upper: [isFinancialRisk],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isFinancialRisk',
              lower: [isFinancialRisk],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isFinancialRisk',
              lower: [isFinancialRisk],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isFinancialRisk',
              lower: [],
              upper: [isFinancialRisk],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isFinancialRiskGreaterThan(
    int isFinancialRisk, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isFinancialRisk',
        lower: [isFinancialRisk],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isFinancialRiskLessThan(
    int isFinancialRisk, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isFinancialRisk',
        lower: [],
        upper: [isFinancialRisk],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isFinancialRiskBetween(
    int lowerIsFinancialRisk,
    int upperIsFinancialRisk, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isFinancialRisk',
        lower: [lowerIsFinancialRisk],
        includeLower: includeLower,
        upper: [upperIsFinancialRisk],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isIllegalBuildingEqualTo(
      int isIllegalBuilding) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isIllegalBuilding',
        value: [isIllegalBuilding],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isIllegalBuildingNotEqualTo(
      int isIllegalBuilding) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isIllegalBuilding',
              lower: [],
              upper: [isIllegalBuilding],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isIllegalBuilding',
              lower: [isIllegalBuilding],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isIllegalBuilding',
              lower: [isIllegalBuilding],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isIllegalBuilding',
              lower: [],
              upper: [isIllegalBuilding],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isIllegalBuildingGreaterThan(
    int isIllegalBuilding, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isIllegalBuilding',
        lower: [isIllegalBuilding],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isIllegalBuildingLessThan(
    int isIllegalBuilding, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isIllegalBuilding',
        lower: [],
        upper: [isIllegalBuilding],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isIllegalBuildingBetween(
    int lowerIsIllegalBuilding,
    int upperIsIllegalBuilding, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isIllegalBuilding',
        lower: [lowerIsIllegalBuilding],
        includeLower: includeLower,
        upper: [upperIsIllegalBuilding],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isNoInsuranceEqualTo(
      int isNoInsurance) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isNoInsurance',
        value: [isNoInsurance],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isNoInsuranceNotEqualTo(
      int isNoInsurance) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isNoInsurance',
              lower: [],
              upper: [isNoInsurance],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isNoInsurance',
              lower: [isNoInsurance],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isNoInsurance',
              lower: [isNoInsurance],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isNoInsurance',
              lower: [],
              upper: [isNoInsurance],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isNoInsuranceGreaterThan(
    int isNoInsurance, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isNoInsurance',
        lower: [isNoInsurance],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isNoInsuranceLessThan(
    int isNoInsurance, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isNoInsurance',
        lower: [],
        upper: [isNoInsurance],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isNoInsuranceBetween(
    int lowerIsNoInsurance,
    int upperIsNoInsurance, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isNoInsurance',
        lower: [lowerIsNoInsurance],
        includeLower: includeLower,
        upper: [upperIsNoInsurance],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isAgentScamEqualTo(
      int isAgentScam) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isAgentScam',
        value: [isAgentScam],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isAgentScamNotEqualTo(
      int isAgentScam) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isAgentScam',
              lower: [],
              upper: [isAgentScam],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isAgentScam',
              lower: [isAgentScam],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isAgentScam',
              lower: [isAgentScam],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isAgentScam',
              lower: [],
              upper: [isAgentScam],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isAgentScamGreaterThan(
    int isAgentScam, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isAgentScam',
        lower: [isAgentScam],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isAgentScamLessThan(
    int isAgentScam, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isAgentScam',
        lower: [],
        upper: [isAgentScam],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isAgentScamBetween(
    int lowerIsAgentScam,
    int upperIsAgentScam, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isAgentScam',
        lower: [lowerIsAgentScam],
        includeLower: includeLower,
        upper: [upperIsAgentScam],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTrustCompanyEqualTo(
      int isTrustCompany) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isTrustCompany',
        value: [isTrustCompany],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTrustCompanyNotEqualTo(
      int isTrustCompany) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isTrustCompany',
              lower: [],
              upper: [isTrustCompany],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isTrustCompany',
              lower: [isTrustCompany],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isTrustCompany',
              lower: [isTrustCompany],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isTrustCompany',
              lower: [],
              upper: [isTrustCompany],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTrustCompanyGreaterThan(
    int isTrustCompany, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isTrustCompany',
        lower: [isTrustCompany],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTrustCompanyLessThan(
    int isTrustCompany, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isTrustCompany',
        lower: [],
        upper: [isTrustCompany],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTrustCompanyBetween(
    int lowerIsTrustCompany,
    int upperIsTrustCompany, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isTrustCompany',
        lower: [lowerIsTrustCompany],
        includeLower: includeLower,
        upper: [upperIsTrustCompany],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTaxEvasionEqualTo(
      int isTaxEvasion) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isTaxEvasion',
        value: [isTaxEvasion],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTaxEvasionNotEqualTo(
      int isTaxEvasion) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isTaxEvasion',
              lower: [],
              upper: [isTaxEvasion],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isTaxEvasion',
              lower: [isTaxEvasion],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isTaxEvasion',
              lower: [isTaxEvasion],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isTaxEvasion',
              lower: [],
              upper: [isTaxEvasion],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTaxEvasionGreaterThan(
    int isTaxEvasion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isTaxEvasion',
        lower: [isTaxEvasion],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTaxEvasionLessThan(
    int isTaxEvasion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isTaxEvasion',
        lower: [],
        upper: [isTaxEvasion],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> isTaxEvasionBetween(
    int lowerIsTaxEvasion,
    int upperIsTaxEvasion, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isTaxEvasion',
        lower: [lowerIsTaxEvasion],
        includeLower: includeLower,
        upper: [upperIsTaxEvasion],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension HouseQueryFilter on QueryBuilder<House, House, QFilterCondition> {
  QueryBuilder<House, House, QAfterFilterCondition> depositEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deposit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> depositGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deposit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> depositLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deposit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> depositBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deposit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'houseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'houseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'houseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'houseName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'houseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'houseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'houseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'houseName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'houseName',
        value: '',
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> houseNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'houseName',
        value: '',
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> idBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> isAgentScamEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAgentScam',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isAgentScamGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isAgentScam',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isAgentScamLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isAgentScam',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isAgentScamBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isAgentScam',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isDiscriminatedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDiscriminated',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isDoubleAgentEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDoubleAgent',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isDoubleAgentGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isDoubleAgent',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isDoubleAgentLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isDoubleAgent',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isDoubleAgentBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isDoubleAgent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isDuplicateContractEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDuplicateContract',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition>
      isDuplicateContractGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isDuplicateContract',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isDuplicateContractLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isDuplicateContract',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isDuplicateContractBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isDuplicateContract',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isFinancialRiskEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFinancialRisk',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isFinancialRiskGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isFinancialRisk',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isFinancialRiskLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isFinancialRisk',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isFinancialRiskBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isFinancialRisk',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isIllegalBuildingEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isIllegalBuilding',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition>
      isIllegalBuildingGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isIllegalBuilding',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isIllegalBuildingLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isIllegalBuilding',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isIllegalBuildingBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isIllegalBuilding',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isNoInsuranceEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isNoInsurance',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isNoInsuranceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isNoInsurance',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isNoInsuranceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isNoInsurance',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isNoInsuranceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isNoInsurance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isTaxEvasionEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTaxEvasion',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isTaxEvasionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isTaxEvasion',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isTaxEvasionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isTaxEvasion',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isTaxEvasionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isTaxEvasion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isTrustCompanyEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTrustCompany',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isTrustCompanyGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isTrustCompany',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isTrustCompanyLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isTrustCompany',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> isTrustCompanyBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isTrustCompany',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> marketPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marketPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> marketPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marketPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> marketPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marketPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> marketPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marketPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> mortgageEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mortgage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> mortgageGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mortgage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> mortgageLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mortgage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> mortgageBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mortgage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> priorityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priority',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> priorityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priority',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> priorityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priority',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> priorityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priority',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rank',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rank',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rank',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rank',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rank',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rank',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rank',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rank',
        value: '',
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> rankIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rank',
        value: '',
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> recordDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recordDate',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> recordDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recordDate',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> recordDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recordDate',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> recordDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recordDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> seniorDepositEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seniorDeposit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> seniorDepositGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seniorDeposit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> seniorDepositLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seniorDeposit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> seniorDepositBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seniorDeposit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension HouseQueryObject on QueryBuilder<House, House, QFilterCondition> {}

extension HouseQueryLinks on QueryBuilder<House, House, QFilterCondition> {}

extension HouseQuerySortBy on QueryBuilder<House, House, QSortBy> {
  QueryBuilder<House, House, QAfterSortBy> sortByDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deposit', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByDepositDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deposit', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByHouseName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseName', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByHouseNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseName', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsAgentScam() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAgentScam', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsAgentScamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAgentScam', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsDiscriminated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDiscriminated', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsDiscriminatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDiscriminated', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsDoubleAgent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDoubleAgent', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsDoubleAgentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDoubleAgent', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsDuplicateContract() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDuplicateContract', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsDuplicateContractDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDuplicateContract', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsFinancialRisk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinancialRisk', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsFinancialRiskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinancialRisk', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsIllegalBuilding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIllegalBuilding', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsIllegalBuildingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIllegalBuilding', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsNoInsurance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNoInsurance', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsNoInsuranceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNoInsurance', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsTaxEvasion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTaxEvasion', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsTaxEvasionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTaxEvasion', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsTrustCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrustCompany', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByIsTrustCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrustCompany', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByMarketPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketPrice', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByMarketPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketPrice', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByMortgage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mortgage', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByMortgageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mortgage', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rank', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rank', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByRecordDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByRecordDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortBySeniorDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seniorDeposit', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortBySeniorDepositDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seniorDeposit', Sort.desc);
    });
  }
}

extension HouseQuerySortThenBy on QueryBuilder<House, House, QSortThenBy> {
  QueryBuilder<House, House, QAfterSortBy> thenByDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deposit', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByDepositDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deposit', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByHouseName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseName', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByHouseNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseName', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsAgentScam() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAgentScam', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsAgentScamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAgentScam', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsDiscriminated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDiscriminated', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsDiscriminatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDiscriminated', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsDoubleAgent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDoubleAgent', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsDoubleAgentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDoubleAgent', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsDuplicateContract() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDuplicateContract', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsDuplicateContractDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDuplicateContract', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsFinancialRisk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinancialRisk', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsFinancialRiskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinancialRisk', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsIllegalBuilding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIllegalBuilding', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsIllegalBuildingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIllegalBuilding', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsNoInsurance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNoInsurance', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsNoInsuranceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNoInsurance', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsTaxEvasion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTaxEvasion', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsTaxEvasionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTaxEvasion', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsTrustCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrustCompany', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIsTrustCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrustCompany', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByMarketPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketPrice', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByMarketPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketPrice', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByMortgage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mortgage', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByMortgageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mortgage', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rank', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rank', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByRecordDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByRecordDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenBySeniorDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seniorDeposit', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenBySeniorDepositDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seniorDeposit', Sort.desc);
    });
  }
}

extension HouseQueryWhereDistinct on QueryBuilder<House, House, QDistinct> {
  QueryBuilder<House, House, QDistinct> distinctByDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deposit');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByHouseName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'houseName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByIsAgentScam() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAgentScam');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByIsDiscriminated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDiscriminated');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByIsDoubleAgent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDoubleAgent');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByIsDuplicateContract() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDuplicateContract');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByIsFinancialRisk() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFinancialRisk');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByIsIllegalBuilding() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isIllegalBuilding');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByIsNoInsurance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isNoInsurance');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByIsTaxEvasion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTaxEvasion');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByIsTrustCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTrustCompany');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByMarketPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marketPrice');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByMortgage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mortgage');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priority');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByRank(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rank', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByRecordDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recordDate');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctBySeniorDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seniorDeposit');
    });
  }
}

extension HouseQueryProperty on QueryBuilder<House, House, QQueryProperty> {
  QueryBuilder<House, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<House, double, QQueryOperations> depositProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deposit');
    });
  }

  QueryBuilder<House, String, QQueryOperations> houseNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'houseName');
    });
  }

  QueryBuilder<House, int, QQueryOperations> isAgentScamProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAgentScam');
    });
  }

  QueryBuilder<House, bool, QQueryOperations> isDiscriminatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDiscriminated');
    });
  }

  QueryBuilder<House, int, QQueryOperations> isDoubleAgentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDoubleAgent');
    });
  }

  QueryBuilder<House, int, QQueryOperations> isDuplicateContractProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDuplicateContract');
    });
  }

  QueryBuilder<House, int, QQueryOperations> isFinancialRiskProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFinancialRisk');
    });
  }

  QueryBuilder<House, int, QQueryOperations> isIllegalBuildingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isIllegalBuilding');
    });
  }

  QueryBuilder<House, int, QQueryOperations> isNoInsuranceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isNoInsurance');
    });
  }

  QueryBuilder<House, int, QQueryOperations> isTaxEvasionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTaxEvasion');
    });
  }

  QueryBuilder<House, int, QQueryOperations> isTrustCompanyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTrustCompany');
    });
  }

  QueryBuilder<House, double, QQueryOperations> marketPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marketPrice');
    });
  }

  QueryBuilder<House, double, QQueryOperations> mortgageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mortgage');
    });
  }

  QueryBuilder<House, double, QQueryOperations> priorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priority');
    });
  }

  QueryBuilder<House, String, QQueryOperations> rankProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rank');
    });
  }

  QueryBuilder<House, DateTime, QQueryOperations> recordDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recordDate');
    });
  }

  QueryBuilder<House, double, QQueryOperations> seniorDepositProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seniorDeposit');
    });
  }
}
