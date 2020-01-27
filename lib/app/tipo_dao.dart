import 'package:moor/moor.dart';

import 'database_bwf.dart';

part 'tipo_dao.g.dart';

@UseDao(tables: [Tipo])
class TipoDao extends DatabaseAccessor<DatabaseBwf> with _$TipoDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  TipoDao(DatabaseBwf db) : super(db);

  Stream<List<Tipos>> getTipos() {
    return (select(tipo)).watch();
  }
}
