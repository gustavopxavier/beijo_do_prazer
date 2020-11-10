import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lojavirtualudemy/datas/product_data.dart';
import 'package:lojavirtualudemy/tiles/product_tile.dart';

class ListAllProducts extends StatelessWidget {
  // final DocumentSnapshot snapshot;

  // const ListAllProducts({Key key, this.snapshot}) : super(key: key);

  // ListAllProducts(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance.collection("beijodoprazer").snapshots(),
        builder: (_, snapshot) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Produtos em Destaque"),
                centerTitle: true,
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.grid_on),
                    ),
                    Tab(
                      icon: Icon(Icons.list),
                    ),
                  ],
                ),
              ),
              body: StreamBuilder(
                  stream: Firestore.instance
                      .collection("beijodoprazer")
                      .snapshots(),
                  builder: (_, snapshot) {
                    return FutureBuilder<QuerySnapshot>(
                      // future: Firestore.instance
                      //     .collection("produtos")
                      //     .document()
                      //     .collection("items")
                      //     .getDocuments(),
                      // future: Firestore.instance
                      //     .collection("beijodoprazer")
                      //     .document()
                      //     .collection("items")
                      //     .getDocuments(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData)
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        else
                          return TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              GridView.builder(
                                padding: EdgeInsets.all(4.0),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 4.0,
                                  crossAxisSpacing: 4.0,
                                  childAspectRatio: 0.65,
                                ),
                                itemCount: snapshot.data.documents.length,
                                // itemBuilder: (context, index) {
                                itemBuilder: (_, index) {
                                  DocumentSnapshot data =
                                      snapshot.data.documents[index];
                                  // return ProductTile(
                                  //     "grid",
                                  //     ProductData.fromDocument(
                                  //         snapshot.data.documents[index]));
                                  return Scaffold(
                                    body: GridTile(
                                      child: Card(
                                        child: Image.network(
                                          data["image"],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      footer: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Text(
                                          data['title'],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              ListView.builder(
                                padding: EdgeInsets.all(4.0),
                                itemCount: snapshot.data.documents.length,
                                // itemBuilder: (context, index) {
                                itemBuilder: (_, index) {
                                  return ProductTile(
                                      "list",
                                      ProductData.fromDocument(
                                          snapshot.data.documents[index]));
                                },
                              )
                            ],
                          );
                      },
                    );
                  }),
            ),
          );
        });
  }
}
