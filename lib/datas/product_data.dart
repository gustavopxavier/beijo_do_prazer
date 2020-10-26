import 'package:cloud_firestore/cloud_firestore.dart';

// Classe realizar chamada dos produtos
class ProductData {
  String id;
  String category;
  String description;
  List images;
  String model;
  double price;
  String produced;
  String status;
  List sizes;
  String title;
  String warranty;

  ProductData.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    description = snapshot.data["description"];
    images = snapshot.data["images"];
    model = snapshot.data["model"];
    price = snapshot.data["price"] + 0.0;
    produced = snapshot.data["produced"];
    status = snapshot.data["status"];
    sizes = snapshot.data["sizes"];
    title = snapshot.data["title"];
    warranty = snapshot.data["warranty"];
  }
}

// description
// images
// model
// price
// produced
// status
// title
// warranty
