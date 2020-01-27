import 'package:exemplo_many_to_many/app/categoria_dao.dart';
import 'package:exemplo_many_to_many/app/database_bwf.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../produto_dao.dart';
import '../../tipo_dao.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          StreamBuilder<List<Categorias>>(
              stream: CategoriaDao(DatabaseProvider.provide(context))
                  .getCategorias(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Container(
                  color: Colors.amberAccent,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data[index].description),
                      );
                    },
                  ),
                );
              }),
          StreamBuilder<List<Tipos>>(
              stream: TipoDao(DatabaseProvider.provide(context)).getTipos(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Container(
                  color: Colors.orangeAccent,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data[index].description),
                      );
                    },
                  ),
                );
              }),
          StreamBuilder<List<ProdutoFull>>(
              stream: ProdutoDao(DatabaseProvider.provide(context)).getProdutos(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Container(
                  color: Colors.green,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data[index].produto.name),
                        subtitle:Column(
                          children: <Widget>[
                            Text(snapshot.data[index].categorias.map((cat)=>cat.description).join(",")),
                            Text(snapshot.data[index].tipos.map((tip)=>tip.description).join(",")),
                          ],
                        ),
                      );
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}
