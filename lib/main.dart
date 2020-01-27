import 'package:flutter/material.dart';
import 'package:exemplo_many_to_many/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/database_bwf.dart';

void main() => runApp(
      DatabaseProvider(
        db: DatabaseBwf(),
        child: ModularApp(module: AppModule()),
      ),
    );

class DatabaseProvider extends InheritedWidget {
  final DatabaseBwf db;

  DatabaseProvider({@required this.db, @required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static DatabaseBwf provide(BuildContext ctx) {
    return (ctx.inheritFromWidgetOfExactType(DatabaseProvider)
            as DatabaseProvider)
        ?.db;
  }
}
