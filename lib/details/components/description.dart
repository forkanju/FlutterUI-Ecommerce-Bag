import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/globals/constants.dart';
import 'package:flutter_ecommerce_ui/models/product.dart';

class Description extends StatelessWidget {
  final Product product;

  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
