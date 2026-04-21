import 'package:flutter/material.dart';
import 'package:homescreen/DetailsScreen.dart';

// 1. شاشة قائمة المنتجات
class VeiwProdect extends StatefulWidget {
  const VeiwProdect({super.key});

  @override
  State<VeiwProdect> createState() => _VeiwProdectState();
}

class _VeiwProdectState extends State<VeiwProdect> {
  @override
  List<String> products = ["water", "orange", "tea", "milk"];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Veiw_prodects",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        
        body: ListView.builder(
          
          itemCount: products.length,
          itemBuilder: (context, i) {
            return ListTile(
              
              title: Text(products[i]),
              // trailing: Icon(Icons.heart_broken_sharp),

              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(
                      productName: products[i],
                    ),
                  ),
                );
                if (result != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(result.toString()),
                  ));
                
                }
              },
            );
          },
        )
        );
  }

}

