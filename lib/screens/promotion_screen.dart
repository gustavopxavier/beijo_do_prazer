import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PromotionScreen extends StatelessWidget {
  // final DocumentSnapshot snapshot;

  // const ListAllProducts({Key key, this.snapshot}) : super(key: key);

  // ListAllProducts(this.snapshot);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Produtos em Promoção"),
            backgroundColor: colorScheme.primaryVariant,
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
            stream: Firestore.instance.collection("promotion").snapshots(),
            builder: (_, snapshot) {
              if (!snapshot.hasData)
                return Center(
                  child: CircularProgressIndicator(),
                );
              else
                return MaterialApp(
                  home: Scaffold(
                    backgroundColor: colorScheme.primary,
                    body: TabBarView(
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
                              // backgroundColor: colorScheme.primary,
                              body: GridTile(
                                child: Card(
                                  child: Image.network(
                                    data["image"],
                                    fit: BoxFit.contain,
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
                        GridView.builder(
                          padding: EdgeInsets.all(4.0),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 4.0,
                            crossAxisSpacing: 4.0,
                            childAspectRatio: 0.65,
                          ),
                          itemCount: snapshot.data.documents.length,
                          // itemBuilder: (context, index) {
                          itemBuilder: (_, index) {
                            DocumentSnapshot data =
                                snapshot.data.documents[index];
                            return Scaffold(
                              body: GridTile(
                                child: Card(
                                  child: Image.network(
                                    data["image"],
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                footer: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text(
                                        data['title'],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 38.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text(
                                        data['description'],
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
            },
          ),
        ),
      ),
    );
  }
}
