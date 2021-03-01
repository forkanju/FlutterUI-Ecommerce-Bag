import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/globals/constants.dart';
import 'package:flutter_ecommerce_ui/models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({
    Key key,
    @required this.product,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: kDefaultPadding),
          height: 50,
          width: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: product.color
            )
          ),
          child: IconButton(
            icon: SvgPicture.asset("assets/icons/add_to_cart.svg",
            color: product.color,),
            onPressed: (){},
          ),
        ),
        Expanded(child: SizedBox(
          height: 50,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            ),
            color: product.color,
            onPressed: (){},
            child: Text('Buy Now'.toUpperCase(),
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
          ),
        ))
      ],
    ),);
  }
}
