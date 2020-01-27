import 'package:moor/moor.dart';

import 'database_bwf.dart';

part 'produto_dao.g.dart';

@UseDao(tables: [ProdutoTipo, ProdutoCategoria, Produto, Categoria, Tipo])
class ProdutoDao extends DatabaseAccessor<DatabaseBwf> with _$ProdutoDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  ProdutoDao(DatabaseBwf db) : super(db);

  Stream<List<ProdutoFull>> getProdutos() {
    final produtosStream = select(produto)
        .join([
          innerJoin(
            produtoCategoria,
            produtoCategoria.produto.equalsExp(produto.id),
          ),
          innerJoin(
            produtoTipo,
            produtoTipo.produto.equalsExp(produto.id),
          ),
          innerJoin(
            tipo,
            tipo.id.equalsExp(produtoTipo.tipo),
          ),
          innerJoin(
            categoria,
            categoria.id.equalsExp(produtoCategoria.categoria),
          )
        ])
        .watch()
        .asyncMap<List<ProdutoFull>>((data) async {
          //   final categorias = await select(categoria).get();
          //    final tipos = await select(tipo).get();

          //   final idToCategoria = {for (var cat in categorias) cat.id: cat};
          //    final idToTipo = {for (var tip in tipos) tip.id: tip};

          final idToCategorias = <int, List<Categorias>>{};
          final idToTipos = <int, List<Tipos>>{};

          List<ProdutoFull> produtosFull = [];

          for (var row in data) {
            final produtoItem = row.readTable(produto);

            final itemCategoria = row.readTable(categoria);

            final idCategoria = row.readTable(produtoCategoria).categoria;

            idToCategorias
                .putIfAbsent(idCategoria, () => [])
                .add(itemCategoria);

            final itemTipo = row.readTable(tipo);
            final idTipo = row.readTable(produtoTipo).tipo;

            idToTipos.putIfAbsent(idTipo, () => []).add(itemTipo);

            produtosFull.add(ProdutoFull(produtoItem, [], []));
          }

          for (var item in produtosFull) {
            item.categorias = idToCategorias.values.reduce((a, b) => a + b);
            item.tipos = idToTipos.values.reduce((a, b) => a + b);
          }

          return produtosFull;
        });

    return produtosStream;
  }
}

class ProdutoFull {
  Produtos produto;
  List<Categorias> categorias;
  List<Tipos> tipos;

  ProdutoFull(this.produto, this.categorias, this.tipos);
}
