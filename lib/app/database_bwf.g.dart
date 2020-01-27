// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_bwf.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Produtos extends DataClass implements Insertable<Produtos> {
  final int id;
  final String name;
  Produtos({@required this.id, @required this.name});
  factory Produtos.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Produtos(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  factory Produtos.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Produtos(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  @override
  ProdutoCompanion createCompanion(bool nullToAbsent) {
    return ProdutoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  Produtos copyWith({int id, String name}) => Produtos(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Produtos(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, name.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Produtos && other.id == this.id && other.name == this.name);
}

class ProdutoCompanion extends UpdateCompanion<Produtos> {
  final Value<int> id;
  final Value<String> name;
  const ProdutoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  ProdutoCompanion.insert({
    @required int id,
    @required String name,
  })  : id = Value(id),
        name = Value(name);
  ProdutoCompanion copyWith({Value<int> id, Value<String> name}) {
    return ProdutoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}

class $ProdutoTable extends Produto with TableInfo<$ProdutoTable, Produtos> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProdutoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  $ProdutoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'produto';
  @override
  final String actualTableName = 'produto';
  @override
  VerificationContext validateIntegrity(ProdutoCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Produtos map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Produtos.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ProdutoCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    return map;
  }

  @override
  $ProdutoTable createAlias(String alias) {
    return $ProdutoTable(_db, alias);
  }
}

class Categorias extends DataClass implements Insertable<Categorias> {
  final int id;
  final String description;
  Categorias({@required this.id, @required this.description});
  factory Categorias.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Categorias(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}desc']),
    );
  }
  factory Categorias.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Categorias(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
    };
  }

  @override
  CategoriaCompanion createCompanion(bool nullToAbsent) {
    return CategoriaCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  Categorias copyWith({int id, String description}) => Categorias(
        id: id ?? this.id,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Categorias(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, description.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Categorias &&
          other.id == this.id &&
          other.description == this.description);
}

class CategoriaCompanion extends UpdateCompanion<Categorias> {
  final Value<int> id;
  final Value<String> description;
  const CategoriaCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
  });
  CategoriaCompanion.insert({
    @required int id,
    @required String description,
  })  : id = Value(id),
        description = Value(description);
  CategoriaCompanion copyWith({Value<int> id, Value<String> description}) {
    return CategoriaCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
    );
  }
}

class $CategoriaTable extends Categoria
    with TableInfo<$CategoriaTable, Categorias> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategoriaTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'desc',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, description];
  @override
  $CategoriaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categoria';
  @override
  final String actualTableName = 'categoria';
  @override
  VerificationContext validateIntegrity(CategoriaCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Categorias map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Categorias.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CategoriaCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.description.present) {
      map['desc'] = Variable<String, StringType>(d.description.value);
    }
    return map;
  }

  @override
  $CategoriaTable createAlias(String alias) {
    return $CategoriaTable(_db, alias);
  }
}

class Tipos extends DataClass implements Insertable<Tipos> {
  final int id;
  final String description;
  Tipos({@required this.id, @required this.description});
  factory Tipos.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Tipos(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}desc']),
    );
  }
  factory Tipos.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tipos(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
    };
  }

  @override
  TipoCompanion createCompanion(bool nullToAbsent) {
    return TipoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  Tipos copyWith({int id, String description}) => Tipos(
        id: id ?? this.id,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Tipos(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, description.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Tipos &&
          other.id == this.id &&
          other.description == this.description);
}

class TipoCompanion extends UpdateCompanion<Tipos> {
  final Value<int> id;
  final Value<String> description;
  const TipoCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
  });
  TipoCompanion.insert({
    @required int id,
    @required String description,
  })  : id = Value(id),
        description = Value(description);
  TipoCompanion copyWith({Value<int> id, Value<String> description}) {
    return TipoCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
    );
  }
}

class $TipoTable extends Tipo with TableInfo<$TipoTable, Tipos> {
  final GeneratedDatabase _db;
  final String _alias;
  $TipoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'desc',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, description];
  @override
  $TipoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tipo';
  @override
  final String actualTableName = 'tipo';
  @override
  VerificationContext validateIntegrity(TipoCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Tipos map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tipos.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TipoCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.description.present) {
      map['desc'] = Variable<String, StringType>(d.description.value);
    }
    return map;
  }

  @override
  $TipoTable createAlias(String alias) {
    return $TipoTable(_db, alias);
  }
}

class ProdutosCategorias extends DataClass
    implements Insertable<ProdutosCategorias> {
  final int produto;
  final int categoria;
  ProdutosCategorias({@required this.produto, @required this.categoria});
  factory ProdutosCategorias.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return ProdutosCategorias(
      produto:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}produto']),
      categoria:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}categoria']),
    );
  }
  factory ProdutosCategorias.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ProdutosCategorias(
      produto: serializer.fromJson<int>(json['produto']),
      categoria: serializer.fromJson<int>(json['categoria']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'produto': serializer.toJson<int>(produto),
      'categoria': serializer.toJson<int>(categoria),
    };
  }

  @override
  ProdutoCategoriaCompanion createCompanion(bool nullToAbsent) {
    return ProdutoCategoriaCompanion(
      produto: produto == null && nullToAbsent
          ? const Value.absent()
          : Value(produto),
      categoria: categoria == null && nullToAbsent
          ? const Value.absent()
          : Value(categoria),
    );
  }

  ProdutosCategorias copyWith({int produto, int categoria}) =>
      ProdutosCategorias(
        produto: produto ?? this.produto,
        categoria: categoria ?? this.categoria,
      );
  @override
  String toString() {
    return (StringBuffer('ProdutosCategorias(')
          ..write('produto: $produto, ')
          ..write('categoria: $categoria')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(produto.hashCode, categoria.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ProdutosCategorias &&
          other.produto == this.produto &&
          other.categoria == this.categoria);
}

class ProdutoCategoriaCompanion extends UpdateCompanion<ProdutosCategorias> {
  final Value<int> produto;
  final Value<int> categoria;
  const ProdutoCategoriaCompanion({
    this.produto = const Value.absent(),
    this.categoria = const Value.absent(),
  });
  ProdutoCategoriaCompanion.insert({
    @required int produto,
    @required int categoria,
  })  : produto = Value(produto),
        categoria = Value(categoria);
  ProdutoCategoriaCompanion copyWith(
      {Value<int> produto, Value<int> categoria}) {
    return ProdutoCategoriaCompanion(
      produto: produto ?? this.produto,
      categoria: categoria ?? this.categoria,
    );
  }
}

class $ProdutoCategoriaTable extends ProdutoCategoria
    with TableInfo<$ProdutoCategoriaTable, ProdutosCategorias> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProdutoCategoriaTable(this._db, [this._alias]);
  final VerificationMeta _produtoMeta = const VerificationMeta('produto');
  GeneratedIntColumn _produto;
  @override
  GeneratedIntColumn get produto => _produto ??= _constructProduto();
  GeneratedIntColumn _constructProduto() {
    return GeneratedIntColumn(
      'produto',
      $tableName,
      false,
    );
  }

  final VerificationMeta _categoriaMeta = const VerificationMeta('categoria');
  GeneratedIntColumn _categoria;
  @override
  GeneratedIntColumn get categoria => _categoria ??= _constructCategoria();
  GeneratedIntColumn _constructCategoria() {
    return GeneratedIntColumn(
      'categoria',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [produto, categoria];
  @override
  $ProdutoCategoriaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'produto_categoria';
  @override
  final String actualTableName = 'produto_categoria';
  @override
  VerificationContext validateIntegrity(ProdutoCategoriaCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.produto.present) {
      context.handle(_produtoMeta,
          produto.isAcceptableValue(d.produto.value, _produtoMeta));
    } else if (isInserting) {
      context.missing(_produtoMeta);
    }
    if (d.categoria.present) {
      context.handle(_categoriaMeta,
          categoria.isAcceptableValue(d.categoria.value, _categoriaMeta));
    } else if (isInserting) {
      context.missing(_categoriaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ProdutosCategorias map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ProdutosCategorias.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ProdutoCategoriaCompanion d) {
    final map = <String, Variable>{};
    if (d.produto.present) {
      map['produto'] = Variable<int, IntType>(d.produto.value);
    }
    if (d.categoria.present) {
      map['categoria'] = Variable<int, IntType>(d.categoria.value);
    }
    return map;
  }

  @override
  $ProdutoCategoriaTable createAlias(String alias) {
    return $ProdutoCategoriaTable(_db, alias);
  }
}

class ProdutosTipos extends DataClass implements Insertable<ProdutosTipos> {
  final int produto;
  final int tipo;
  ProdutosTipos({@required this.produto, @required this.tipo});
  factory ProdutosTipos.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return ProdutosTipos(
      produto:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}produto']),
      tipo: intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo']),
    );
  }
  factory ProdutosTipos.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ProdutosTipos(
      produto: serializer.fromJson<int>(json['produto']),
      tipo: serializer.fromJson<int>(json['tipo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'produto': serializer.toJson<int>(produto),
      'tipo': serializer.toJson<int>(tipo),
    };
  }

  @override
  ProdutoTipoCompanion createCompanion(bool nullToAbsent) {
    return ProdutoTipoCompanion(
      produto: produto == null && nullToAbsent
          ? const Value.absent()
          : Value(produto),
      tipo: tipo == null && nullToAbsent ? const Value.absent() : Value(tipo),
    );
  }

  ProdutosTipos copyWith({int produto, int tipo}) => ProdutosTipos(
        produto: produto ?? this.produto,
        tipo: tipo ?? this.tipo,
      );
  @override
  String toString() {
    return (StringBuffer('ProdutosTipos(')
          ..write('produto: $produto, ')
          ..write('tipo: $tipo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(produto.hashCode, tipo.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ProdutosTipos &&
          other.produto == this.produto &&
          other.tipo == this.tipo);
}

class ProdutoTipoCompanion extends UpdateCompanion<ProdutosTipos> {
  final Value<int> produto;
  final Value<int> tipo;
  const ProdutoTipoCompanion({
    this.produto = const Value.absent(),
    this.tipo = const Value.absent(),
  });
  ProdutoTipoCompanion.insert({
    @required int produto,
    @required int tipo,
  })  : produto = Value(produto),
        tipo = Value(tipo);
  ProdutoTipoCompanion copyWith({Value<int> produto, Value<int> tipo}) {
    return ProdutoTipoCompanion(
      produto: produto ?? this.produto,
      tipo: tipo ?? this.tipo,
    );
  }
}

class $ProdutoTipoTable extends ProdutoTipo
    with TableInfo<$ProdutoTipoTable, ProdutosTipos> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProdutoTipoTable(this._db, [this._alias]);
  final VerificationMeta _produtoMeta = const VerificationMeta('produto');
  GeneratedIntColumn _produto;
  @override
  GeneratedIntColumn get produto => _produto ??= _constructProduto();
  GeneratedIntColumn _constructProduto() {
    return GeneratedIntColumn(
      'produto',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  GeneratedIntColumn _tipo;
  @override
  GeneratedIntColumn get tipo => _tipo ??= _constructTipo();
  GeneratedIntColumn _constructTipo() {
    return GeneratedIntColumn(
      'tipo',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [produto, tipo];
  @override
  $ProdutoTipoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'produto_tipo';
  @override
  final String actualTableName = 'produto_tipo';
  @override
  VerificationContext validateIntegrity(ProdutoTipoCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.produto.present) {
      context.handle(_produtoMeta,
          produto.isAcceptableValue(d.produto.value, _produtoMeta));
    } else if (isInserting) {
      context.missing(_produtoMeta);
    }
    if (d.tipo.present) {
      context.handle(
          _tipoMeta, tipo.isAcceptableValue(d.tipo.value, _tipoMeta));
    } else if (isInserting) {
      context.missing(_tipoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ProdutosTipos map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ProdutosTipos.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ProdutoTipoCompanion d) {
    final map = <String, Variable>{};
    if (d.produto.present) {
      map['produto'] = Variable<int, IntType>(d.produto.value);
    }
    if (d.tipo.present) {
      map['tipo'] = Variable<int, IntType>(d.tipo.value);
    }
    return map;
  }

  @override
  $ProdutoTipoTable createAlias(String alias) {
    return $ProdutoTipoTable(_db, alias);
  }
}

abstract class _$DatabaseBwf extends GeneratedDatabase {
  _$DatabaseBwf(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ProdutoTable _produto;
  $ProdutoTable get produto => _produto ??= $ProdutoTable(this);
  $CategoriaTable _categoria;
  $CategoriaTable get categoria => _categoria ??= $CategoriaTable(this);
  $TipoTable _tipo;
  $TipoTable get tipo => _tipo ??= $TipoTable(this);
  $ProdutoCategoriaTable _produtoCategoria;
  $ProdutoCategoriaTable get produtoCategoria =>
      _produtoCategoria ??= $ProdutoCategoriaTable(this);
  $ProdutoTipoTable _produtoTipo;
  $ProdutoTipoTable get produtoTipo => _produtoTipo ??= $ProdutoTipoTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [produto, categoria, tipo, produtoCategoria, produtoTipo];
}
