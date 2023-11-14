import 'package:appcommerce/Pages/second_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List<dynamic>> getCommerce() async{
  List commerces=[];
  CollectionReference collectionReferenceCommerces=db.collection("commerces");
  QuerySnapshot queryCommerces=await collectionReferenceCommerces.get(); 
  queryCommerces.docs.forEach((documento) {
    commerces.add(Commerce.fromMap(documento.data())); 
  }); 
  return commerces;
}

Future <void> addCommerce(Commerce commerce) async{
  CollectionReference collectionReferenceCommerces=db.collection("commerces");
  collectionReferenceCommerces.add({
    "name":commerce.name,
    "phone":commerce.phone,
    "address":commerce.address,
    "business":commerce.business,
    "delivery":commerce.delivery,
    "webpage":commerce.webpage,
  });
}