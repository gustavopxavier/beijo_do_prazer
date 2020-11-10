import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lojavirtualudemy/tiles/category_tiles.dart';

// Primeira tela - Lista produtos por posição X e Y
class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 211, 118, 130),
              Color.fromARGB(255, 253, 181, 168),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
        );

    return Stack(
      //Stack é utilizado quando se coloca um objeto acima de outros
      children: <Widget>[
        _buildBodyBack(),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              //Barra do menu superior - Cabeçalho deslizante
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  "Novidades",
                  style: TextStyle(fontSize: 30),
                ),
                centerTitle: true,
              ),
            ),
            FutureBuilder<QuerySnapshot>(
              future: getDataProdutos(),
              // future: Firestore.instance
              //     .collection("home")
              //     .orderBy("pos")
              //     .getDocuments(),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return SliverToBoxAdapter(
                    child: Container(
                      height: 200.0,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  );
                else {
                  var dividedTiles = ListTile.divideTiles(
                          tiles: snapshot.data.documents.map((doc) {
                            return CategoryTile(doc);
                          }).toList(),
                          color: Colors.grey[500])
                      .toList();

                  return ListView(
                    children: dividedTiles,
                  );
                }
              },
            )
          ],
        ),
      ],
    );
  }
}

Future getDataProdutos() {
  return Firestore.instance
      .collection('home')
      .orderBy('pos')
      // .document()
      // .collection("items")
      .getDocuments();
}
