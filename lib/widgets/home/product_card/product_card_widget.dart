import 'package:custom_halal_app/widgets/inputField/custom_icon_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final String imagePath;
  final String productName;
  final double productRating;
  final int soldCount;
  final double productRate;
  final String discount;

  const ProductCardWidget({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productRating,
    required this.soldCount,
    required this.productRate,
    required this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      color: Color(0XFFE1EFE6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      child: Image.asset(
                        imagePath,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      discount,
                      style: TextStyle(color: Colors.white, fontSize: 8,),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: CustomIconButtonWidget(
                    width: 30,
                    height: 30,
                    child: Icon(Icons.shopping_cart),
                    onTap: () {}
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    productName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Row(
                    //   children: List.generate(
                    //     5,
                    //     (index) => Icon(
                    //       Icons.star,
                    //       color: index < productRating.floor()
                    //           ? Colors.orange
                    //           : Colors.grey,
                    //     ),
                    //   ),
                    // ),
                    Icon(
                      Icons.star,
                      color: productRating >= 1 ? Colors.orange : Colors.grey,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '${productRating.toString()}',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(width: 18),
                    Text(
                      '$soldCount sold',
                      style: TextStyle(color: Colors.grey, fontSize: 8),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$$productRate',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '30.00',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
