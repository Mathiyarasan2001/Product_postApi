import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(

          toolbarHeight: 100,
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text('Cart',
              style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(color: Colors.white),
              ))),
    );
  }
}
