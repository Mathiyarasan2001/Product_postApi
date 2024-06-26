import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/productmodel.dart';
import '../resources/api.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  ProductPageState createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  Future<Product?>? _productFuture;

  @override
  void initState() {
    super.initState();
    _productFuture = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text('Product List',
              style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(color: Colors.white),
              ))),
      body: FutureBuilder<Product?>(
        future: _productFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            final productList = snapshot.data!.list;
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 1000,
                width: 400,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 7,
                      childAspectRatio: .5 / .8,
                      crossAxisSpacing: 7),
                  itemBuilder: (context, index) {
                    final product = productList[index];
                    return Container(
                      height: 700,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 190,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.network(
                              product.image,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4,left: 5,right: 5),
                            child: Container(
                              child: Text(
                                product.title,
                                style: GoogleFonts.comfortaa(
                                    textStyle: const TextStyle(
                                        color: Colors.white, fontSize: 10,fontWeight: FontWeight.w600)),
                                maxLines: 5,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:4,right: 10),
                            child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(style:GoogleFonts.comfortaa(textStyle:TextStyle(color:Colors.white,fontWeight: FontWeight.w700,fontSize: 10 )),"\ ${product.type}"),
                                // SizedBox(width: 80,),
                                Text(
                                    style: GoogleFonts.comfortaa(textStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 11)),
                                    '\₹${product.price}')
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          } else {
            return const Center(
              child: Text('No data available'),
            );
          }
        },
      ),
    );
  }
}
