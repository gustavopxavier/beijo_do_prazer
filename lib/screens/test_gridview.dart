import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TestGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: Firestore.instance.collection("beijodoprazer").snapshots(),
          builder: (_, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: Text("Abrindo..."),
              );
            } else {
              return Scaffold(
                appBar: AppBar(
                  title: Text("Produtos em Destaque"),
                  centerTitle: true,
                ),
                body: GridView.builder(
                  padding: EdgeInsets.all(1.0),
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data.documents.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (_, index) {
                    DocumentSnapshot data = snapshot.data.documents[index];
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
              );
            }
          }),
    );
  }
}

// GridView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: snapshot.data.documents.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2),
//                 itemBuilder: (_, index) {
//                   DocumentSnapshot data = snapshot.data.documents[index];
//                   return GridTile(
//                     child: Image.network(
//                       data["image"],
//                     ),
//                   );
//                 },
//               );
