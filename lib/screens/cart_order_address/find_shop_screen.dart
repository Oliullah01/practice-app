import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/screens/cart_order_address/see_shop_location_screen.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_icon_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindShop extends StatefulWidget {
  const FindShop({super.key});

  @override
  State<FindShop> createState() => _FindShopState();
}

class _FindShopState extends State<FindShop> {
  Color _bgColor = const Color(0XFFE1EFE6);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _bgColor,
        body: Stack(children: [
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 10.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 75.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AuthCustomIconBtnWidget(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/images/img_arrow_left.png'),
                        ),
                        SizedBox(width: 70.h),
                        Text(
                          'Find Shop'.tr,
                          style: TextStyleCustomize.titleLargeBlackA600,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Text('Shipping Address', style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),),
                SizedBox(height: 8),
                _buildAddressCard(),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Divider(thickness: 2,color: Colors.green.shade100,),
                ),
                SizedBox(height: 18),
                Text('Order List',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ProductCart(
                        name: 'Foam Padding Chair',
                        image: AssetImage('assets/images/popular_item_chips.png'),
                        price: '\$350.00',
                        availableQuantity: '12 pcs',
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: buildBottomFixedContainer(context),
          ),
        ]),
      ),
    );
  }

  Container buildBottomFixedContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SeeShopLocationScreen(),),);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide.none,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Find shop',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressCard() {
    return Card(
      margin: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 6),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green.shade700,
              ),
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.location_on,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '19/A, Dhanmondi, PC 5897',
                    style: TextStyle(fontSize: 10.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCart extends StatelessWidget {
  const ProductCart({
    super.key,
    required this.image,
    required this.name,
    required this.availableQuantity,
    required this.price,
    this.showCloseIcon = true,
  });

  final AssetImage image;
  final String name;
  final String availableQuantity;
  final String price;
  final bool showCloseIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0XFFE1EFE6),
                    image: DecorationImage(
                      image: image,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Name and Remove Icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {

                            },
                            child: Image.asset('assets/images/offer_badge.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Available: $availableQuantity',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}