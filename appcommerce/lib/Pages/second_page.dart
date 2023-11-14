import 'package:appcommerce/Services/firebase_services.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MIS COMERCIOS"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<List<dynamic>>(
              future: getCommerce(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data![index]["name"]),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(snapshot.data![index]["phone"]),
                            Text(snapshot.data![index]["address"]),
                            Text(snapshot.data![index]["business"]),
                            Text(snapshot.data![index]["delivery"]),
                            Text(snapshot.data![index]["webpage"]),
                          ],
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return const CircularProgressIndicator();
              },
            ),
          ],
      ),
    ),
    );
  }
} 

class Commerce{
  String name;
  String phone;
  String address;
  String business;
  String delivery;
  String webpage;
  
  Commerce({
    required this.name,
    required this.phone,
    required this.address,
    required this.business,
    required this.delivery,
    required this.webpage
    });

  static Commerce fromMap(Object? data) {
    if (data is Map<String, dynamic>) {
    return Commerce(
      name: data['name'],
      phone: data['phone'],
      address: data['address'],
      business: data['business'],
      delivery: data['delivery'],
      webpage: data['webpage'],
    );
  }
  throw Exception('Data is not a map');
  }

  operator [](String key) {
    switch (key) {
      case 'name':
        return name;
      case 'phone':
        return phone;
      case 'address':
        return address;
      case 'business':
        return business;
      case 'delivery':
        return delivery;
      case 'webpage':
        return webpage;
      default:
        throw ArgumentError('Invalid key: $key');
    }
  }
}