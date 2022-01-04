import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(249, 157, 185, 1.0),
              Color.fromRGBO(253, 220, 230, 1.0)
            ]),
      ),
    );
  }
}
