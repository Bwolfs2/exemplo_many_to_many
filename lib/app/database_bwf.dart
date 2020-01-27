import 'dart:async';
import 'package:moor_flutter/moor_flutter.dart';

part 'database_bwf.g.dart';

@DataClassName('Produtos')
class Produto extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
}

@DataClassName('Categorias')
class Categoria extends Table {
  IntColumn get id => integer()();
  TextColumn get description => text().named('desc')();
}

@DataClassName('Tipos')
class Tipo extends Table {
  IntColumn get id => integer()();
  TextColumn get description => text().named('desc')();
}

@DataClassName('ProdutosCategorias')
class ProdutoCategoria extends Table {
  IntColumn get produto => integer()();
  IntColumn get categoria => integer()();
}

@DataClassName('ProdutosTipos')
class ProdutoTipo extends Table {
  IntColumn get produto => integer()();
  IntColumn get tipo => integer()();
}

@UseMoor(tables: [Produto, Categoria, Tipo, ProdutoCategoria, ProdutoTipo])
class DatabaseBwf extends _$DatabaseBwf {
  DatabaseBwf()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      beforeOpen: (details) async {
        if (details.wasCreated) {
          await into(tipo).insert(TipoCompanion(
            id: const Value(1),
            description: const Value("Tipo 1"),
          ));

          await into(tipo).insert(TipoCompanion(
            id: const Value(2),
            description: const Value("Tipo 2"),
          ));

          await into(categoria).insert(CategoriaCompanion(
            id: const Value(1),
            description: const Value("Categoria 1"),
          ));

          await into(categoria).insert(CategoriaCompanion(
            id: const Value(2),
            description: const Value("Categoria 2"),
          ));

          await into(produto).insert(ProdutoCompanion(
              id: const Value(1), name: const Value("Produto 1")));

          await into(produto).insert(ProdutoCompanion(
              id: const Value(2), name: const Value("Produto 2")));

          await into(produtoCategoria).insert(
            ProdutoCategoriaCompanion(
              produto: const Value(1),
              categoria: const Value(1),
            ),
          );

          await into(produtoCategoria).insert(
            ProdutoCategoriaCompanion(
              produto: const Value(1),
              categoria: const Value(2),
            ),
          );

          await into(produtoTipo).insert(
            ProdutoTipoCompanion(
              produto: const Value(1),
              tipo: const Value(1),
            ),
          );

          await into(produtoTipo).insert(
            ProdutoTipoCompanion(
              produto: const Value(1),
              tipo: const Value(2),
            ),
          );

          // await into(todos).insert(
          //   TodosCompanion(
          //     content: const Value('Rework persistence code'),
          //     category: Value(workId),
          //     targetDate: Value(
          //       DateTime.now().add(const Duration(days: 4)),
          //     ),
          //   ),
          // );
        }
      },
    );
  }
}
