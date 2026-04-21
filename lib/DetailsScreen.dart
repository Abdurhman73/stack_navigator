import 'package:flutter/material.dart';

// 2. شاشة تفاصيل المنتج
class ProductDetailsScreen extends StatelessWidget {
  // استقبال اسم المنتج كمتغير

  // تعريف الـ Constructor لاستقبال البيانات
  // ProductDetailsScreen({super.key, required this.productName});

  final productName;

  const ProductDetailsScreen({required this.productName});
  //Constructor استقبال البيانات عبر

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Details Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // عرض اسم المنتج الذي تم تمريره
            Text('Product Name: $productName',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // استخدام pop للرجوع، مع إرسال النص المطلوب كنتيجة (Result)
                Navigator.pop(
                  context,
                  'Added to favorites',
                );
              },
              child: const Text('Add to Favorites'),
            ),
         
          ],
        ),
      ),
      
    );
  }
}
