import 'package:flutter/material.dart';
import 'package:homescreen/veiw_prodects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homescreen(),
    
    );
  }
}
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
       const Text("HomeScreen", style: 
       TextStyle(fontSize: 40, color: Color.fromARGB(255, 71, 147, 228))),
      ),
      body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Icon(Icons.home,size: 192,color: Colors.blue,),
          const SizedBox(height: 35,),
         ElevatedButton(onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) =>const VeiwProdect(),)
          );
           
         }, child:const Text("View prodect")),

       
         
        ]
        
         ),
         
          
        
      ),
      
    );
  }
}

