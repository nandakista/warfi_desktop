// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class ProductEntityData extends DataClass
    implements Insertable<ProductEntityData> {
  final String idName;
  final String name;
  final int price;
  final int box;
  final int bal;
  final int pack;
  final int pcs;
  ProductEntityData(
      {required this.idName,
      required this.name,
      required this.price,
      required this.box,
      required this.bal,
      required this.pack,
      required this.pcs});
  factory ProductEntityData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProductEntityData(
      idName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_name'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      price: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}price'])!,
      box: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}box'])!,
      bal: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bal'])!,
      pack: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pack'])!,
      pcs: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pcs'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_name'] = Variable<String>(idName);
    map['name'] = Variable<String>(name);
    map['price'] = Variable<int>(price);
    map['box'] = Variable<int>(box);
    map['bal'] = Variable<int>(bal);
    map['pack'] = Variable<int>(pack);
    map['pcs'] = Variable<int>(pcs);
    return map;
  }

  ProductEntityCompanion toCompanion(bool nullToAbsent) {
    return ProductEntityCompanion(
      idName: Value(idName),
      name: Value(name),
      price: Value(price),
      box: Value(box),
      bal: Value(bal),
      pack: Value(pack),
      pcs: Value(pcs),
    );
  }

  factory ProductEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductEntityData(
      idName: serializer.fromJson<String>(json['idName']),
      name: serializer.fromJson<String>(json['name']),
      price: serializer.fromJson<int>(json['price']),
      box: serializer.fromJson<int>(json['box']),
      bal: serializer.fromJson<int>(json['bal']),
      pack: serializer.fromJson<int>(json['pack']),
      pcs: serializer.fromJson<int>(json['pcs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idName': serializer.toJson<String>(idName),
      'name': serializer.toJson<String>(name),
      'price': serializer.toJson<int>(price),
      'box': serializer.toJson<int>(box),
      'bal': serializer.toJson<int>(bal),
      'pack': serializer.toJson<int>(pack),
      'pcs': serializer.toJson<int>(pcs),
    };
  }

  ProductEntityData copyWith(
          {String? idName,
          String? name,
          int? price,
          int? box,
          int? bal,
          int? pack,
          int? pcs}) =>
      ProductEntityData(
        idName: idName ?? this.idName,
        name: name ?? this.name,
        price: price ?? this.price,
        box: box ?? this.box,
        bal: bal ?? this.bal,
        pack: pack ?? this.pack,
        pcs: pcs ?? this.pcs,
      );
  @override
  String toString() {
    return (StringBuffer('ProductEntityData(')
          ..write('idName: $idName, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('box: $box, ')
          ..write('bal: $bal, ')
          ..write('pack: $pack, ')
          ..write('pcs: $pcs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idName, name, price, box, bal, pack, pcs);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductEntityData &&
          other.idName == this.idName &&
          other.name == this.name &&
          other.price == this.price &&
          other.box == this.box &&
          other.bal == this.bal &&
          other.pack == this.pack &&
          other.pcs == this.pcs);
}

class ProductEntityCompanion extends UpdateCompanion<ProductEntityData> {
  final Value<String> idName;
  final Value<String> name;
  final Value<int> price;
  final Value<int> box;
  final Value<int> bal;
  final Value<int> pack;
  final Value<int> pcs;
  const ProductEntityCompanion({
    this.idName = const Value.absent(),
    this.name = const Value.absent(),
    this.price = const Value.absent(),
    this.box = const Value.absent(),
    this.bal = const Value.absent(),
    this.pack = const Value.absent(),
    this.pcs = const Value.absent(),
  });
  ProductEntityCompanion.insert({
    required String idName,
    required String name,
    required int price,
    required int box,
    required int bal,
    required int pack,
    required int pcs,
  })  : idName = Value(idName),
        name = Value(name),
        price = Value(price),
        box = Value(box),
        bal = Value(bal),
        pack = Value(pack),
        pcs = Value(pcs);
  static Insertable<ProductEntityData> custom({
    Expression<String>? idName,
    Expression<String>? name,
    Expression<int>? price,
    Expression<int>? box,
    Expression<int>? bal,
    Expression<int>? pack,
    Expression<int>? pcs,
  }) {
    return RawValuesInsertable({
      if (idName != null) 'id_name': idName,
      if (name != null) 'name': name,
      if (price != null) 'price': price,
      if (box != null) 'box': box,
      if (bal != null) 'bal': bal,
      if (pack != null) 'pack': pack,
      if (pcs != null) 'pcs': pcs,
    });
  }

  ProductEntityCompanion copyWith(
      {Value<String>? idName,
      Value<String>? name,
      Value<int>? price,
      Value<int>? box,
      Value<int>? bal,
      Value<int>? pack,
      Value<int>? pcs}) {
    return ProductEntityCompanion(
      idName: idName ?? this.idName,
      name: name ?? this.name,
      price: price ?? this.price,
      box: box ?? this.box,
      bal: bal ?? this.bal,
      pack: pack ?? this.pack,
      pcs: pcs ?? this.pcs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idName.present) {
      map['id_name'] = Variable<String>(idName.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (box.present) {
      map['box'] = Variable<int>(box.value);
    }
    if (bal.present) {
      map['bal'] = Variable<int>(bal.value);
    }
    if (pack.present) {
      map['pack'] = Variable<int>(pack.value);
    }
    if (pcs.present) {
      map['pcs'] = Variable<int>(pcs.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductEntityCompanion(')
          ..write('idName: $idName, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('box: $box, ')
          ..write('bal: $bal, ')
          ..write('pack: $pack, ')
          ..write('pcs: $pcs')
          ..write(')'))
        .toString();
  }
}

class $ProductEntityTable extends ProductEntity
    with TableInfo<$ProductEntityTable, ProductEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductEntityTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idNameMeta = const VerificationMeta('idName');
  @override
  late final GeneratedColumn<String?> idName = GeneratedColumn<String?>(
      'id_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<int?> price = GeneratedColumn<int?>(
      'price', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _boxMeta = const VerificationMeta('box');
  @override
  late final GeneratedColumn<int?> box = GeneratedColumn<int?>(
      'box', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _balMeta = const VerificationMeta('bal');
  @override
  late final GeneratedColumn<int?> bal = GeneratedColumn<int?>(
      'bal', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _packMeta = const VerificationMeta('pack');
  @override
  late final GeneratedColumn<int?> pack = GeneratedColumn<int?>(
      'pack', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _pcsMeta = const VerificationMeta('pcs');
  @override
  late final GeneratedColumn<int?> pcs = GeneratedColumn<int?>(
      'pcs', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [idName, name, price, box, bal, pack, pcs];
  @override
  String get aliasedName => _alias ?? 'product_entity';
  @override
  String get actualTableName => 'product_entity';
  @override
  VerificationContext validateIntegrity(Insertable<ProductEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_name')) {
      context.handle(_idNameMeta,
          idName.isAcceptableOrUnknown(data['id_name']!, _idNameMeta));
    } else if (isInserting) {
      context.missing(_idNameMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('box')) {
      context.handle(
          _boxMeta, box.isAcceptableOrUnknown(data['box']!, _boxMeta));
    } else if (isInserting) {
      context.missing(_boxMeta);
    }
    if (data.containsKey('bal')) {
      context.handle(
          _balMeta, bal.isAcceptableOrUnknown(data['bal']!, _balMeta));
    } else if (isInserting) {
      context.missing(_balMeta);
    }
    if (data.containsKey('pack')) {
      context.handle(
          _packMeta, pack.isAcceptableOrUnknown(data['pack']!, _packMeta));
    } else if (isInserting) {
      context.missing(_packMeta);
    }
    if (data.containsKey('pcs')) {
      context.handle(
          _pcsMeta, pcs.isAcceptableOrUnknown(data['pcs']!, _pcsMeta));
    } else if (isInserting) {
      context.missing(_pcsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {name};
  @override
  ProductEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProductEntityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductEntityTable createAlias(String alias) {
    return $ProductEntityTable(attachedDatabase, alias);
  }
}

class TransactionEntityData extends DataClass
    implements Insertable<TransactionEntityData> {
  final int id;
  final String idProduct;
  final String createdAt;
  final String deletedAt;
  TransactionEntityData(
      {required this.id,
      required this.idProduct,
      required this.createdAt,
      required this.deletedAt});
  factory TransactionEntityData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TransactionEntityData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idProduct: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_product'])!,
      createdAt: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      deletedAt: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_product'] = Variable<String>(idProduct);
    map['created_at'] = Variable<String>(createdAt);
    map['deleted_at'] = Variable<String>(deletedAt);
    return map;
  }

  TransactionEntityCompanion toCompanion(bool nullToAbsent) {
    return TransactionEntityCompanion(
      id: Value(id),
      idProduct: Value(idProduct),
      createdAt: Value(createdAt),
      deletedAt: Value(deletedAt),
    );
  }

  factory TransactionEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionEntityData(
      id: serializer.fromJson<int>(json['id']),
      idProduct: serializer.fromJson<String>(json['idProduct']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      deletedAt: serializer.fromJson<String>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idProduct': serializer.toJson<String>(idProduct),
      'createdAt': serializer.toJson<String>(createdAt),
      'deletedAt': serializer.toJson<String>(deletedAt),
    };
  }

  TransactionEntityData copyWith(
          {int? id, String? idProduct, String? createdAt, String? deletedAt}) =>
      TransactionEntityData(
        id: id ?? this.id,
        idProduct: idProduct ?? this.idProduct,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('TransactionEntityData(')
          ..write('id: $id, ')
          ..write('idProduct: $idProduct, ')
          ..write('createdAt: $createdAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idProduct, createdAt, deletedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionEntityData &&
          other.id == this.id &&
          other.idProduct == this.idProduct &&
          other.createdAt == this.createdAt &&
          other.deletedAt == this.deletedAt);
}

class TransactionEntityCompanion
    extends UpdateCompanion<TransactionEntityData> {
  final Value<int> id;
  final Value<String> idProduct;
  final Value<String> createdAt;
  final Value<String> deletedAt;
  const TransactionEntityCompanion({
    this.id = const Value.absent(),
    this.idProduct = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TransactionEntityCompanion.insert({
    this.id = const Value.absent(),
    required String idProduct,
    required String createdAt,
    required String deletedAt,
  })  : idProduct = Value(idProduct),
        createdAt = Value(createdAt),
        deletedAt = Value(deletedAt);
  static Insertable<TransactionEntityData> custom({
    Expression<int>? id,
    Expression<String>? idProduct,
    Expression<String>? createdAt,
    Expression<String>? deletedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idProduct != null) 'id_product': idProduct,
      if (createdAt != null) 'created_at': createdAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
    });
  }

  TransactionEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? idProduct,
      Value<String>? createdAt,
      Value<String>? deletedAt}) {
    return TransactionEntityCompanion(
      id: id ?? this.id,
      idProduct: idProduct ?? this.idProduct,
      createdAt: createdAt ?? this.createdAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idProduct.present) {
      map['id_product'] = Variable<String>(idProduct.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionEntityCompanion(')
          ..write('id: $id, ')
          ..write('idProduct: $idProduct, ')
          ..write('createdAt: $createdAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }
}

class $TransactionEntityTable extends TransactionEntity
    with TableInfo<$TransactionEntityTable, TransactionEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionEntityTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idProductMeta = const VerificationMeta('idProduct');
  @override
  late final GeneratedColumn<String?> idProduct = GeneratedColumn<String?>(
      'id_product', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES product_entity (id_name)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<String?> createdAt = GeneratedColumn<String?>(
      'created_at', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  @override
  late final GeneratedColumn<String?> deletedAt = GeneratedColumn<String?>(
      'deleted_at', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, idProduct, createdAt, deletedAt];
  @override
  String get aliasedName => _alias ?? 'transaction_entity';
  @override
  String get actualTableName => 'transaction_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<TransactionEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_product')) {
      context.handle(_idProductMeta,
          idProduct.isAcceptableOrUnknown(data['id_product']!, _idProductMeta));
    } else if (isInserting) {
      context.missing(_idProductMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta));
    } else if (isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TransactionEntityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TransactionEntityTable createAlias(String alias) {
    return $TransactionEntityTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ProductEntityTable productEntity = $ProductEntityTable(this);
  late final $TransactionEntityTable transactionEntity =
      $TransactionEntityTable(this);
  late final ProductDao productDao = ProductDao(this as AppDatabase);
  late final TransactionDao transactionDao =
      TransactionDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [productEntity, transactionEntity];
}