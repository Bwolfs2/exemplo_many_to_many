import 'package:moor/moor.dart';

import 'database_bwf.dart';

part 'categoria_dao.g.dart';

@UseDao(tables: [Categoria])
class CategoriaDao extends DatabaseAccessor<DatabaseBwf>
    with _$CategoriaDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  CategoriaDao(DatabaseBwf db) : super(db);

  Stream<List<Categorias>> getCategorias() {
    return (select(categoria)).watch();
  }
}
