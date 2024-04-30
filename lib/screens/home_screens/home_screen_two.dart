import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/home/product_card/product_card_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  int idx = 0;

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime(2010, 1, 1), 35),
      SalesData(DateTime(2011, 1, 1), 28),
      SalesData(DateTime(2012, 1, 1), 34),
      SalesData(DateTime(2013, 1, 1), 32),
      SalesData(DateTime(2014, 1, 1), 40),
    ];

    List<String> imagePaths = [
      'assets/images/category_two.png',
      'assets/images/category_three.png',
      'assets/images/category_four.png',
      'assets/images/category_one.png',
      'assets/images/category_two.png',
    ];

    List<String> categoryNames = [
      'All',
      'Rice',
      'Salt',
      'Biscuit',
      'Milk',
      'Coconut'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          height: 80,
          width: 80,
        ),
        centerTitle: true,
        backgroundColor: Color(0XFF05792B),
        leading: Image.asset('assets/images/menu_bar.png'),
        actions: [Image.asset('assets/images/search.png')],
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromRGBO(225, 239, 230, 1),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/home_bg_green.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: CustomTextFormFieldWidget(
                        hintText: 'search'.tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.text,
                        fillColor: Colors.white,
                        filled: true,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
                          child: AuthCustomImageViewWidget(
                            imagePath: 'assets/images/searching.png',
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(maxHeight: 52.v),
                        suffix: InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
                            child: AuthCustomImageViewWidget(
                              imagePath: 'assets/images/searching_bar.png',
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 52.v,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 18.v),
                      ),
                    ),
                    Container(
                      height: 200,
                      color: Colors.blue,
                      child: Center(
                        child: Text("Donation Info"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Special Offer"),
                          Text("See All"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          5,
                          (index) => Image.asset(
                            'assets/images/slider1.png',
                            width: 300,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Category"),
                          Text("See All"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          5,
                          (index) => Image.asset(
                            imagePaths[index],
                            width: 100,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Most Popular"),
                          Text("See All"),
                        ],
                      ),
                    ),
                    /*SizedBox(
  height: 40,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: List.generate(
      categoryNames.length,
      (index) => SmallButton(text: categoryNames[index]),
    ),
  ),
)
*/
                    SizedBox(
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: categoryNames.map((categoryName) {
                          return SmallButton(text: categoryName);
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        children: List.generate(
                          8,
                          (index) => ProductCardWidget(
                            imagePath: 'assets/images/popular_item_chips.png',
                            productName: 'Product',
                            productRating: 4.5,
                            soldCount: 8456,
                            productRate: 20.99,
                            discount: '10% off',
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.all(8.0),
                    //   child: SizedBox(
                    //     height: 300,
                    //     width: 400,
                    //     child: GridView.builder(
                    //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //       crossAxisCount: 2,
                    //       crossAxisSpacing: 16,
                    //       mainAxisSpacing: 16,
                    //       childAspectRatio: 0.7,
                    //     ),
                    //         itemCount: 10,
                    //         itemBuilder: (BuildContext context,int index){
                    //       return  ProductCardWidget(
                    //                 imagePath: 'assets/images/popular_item_chips.png',
                    //                 productName: 'Product',
                    //                 productRating: 4.5,
                    //                 soldCount: 8456,
                    //                 productRate: 20.99,
                    //                 discount: '10% off',
                    //               );
                    //     }),
                    //   ),
                    // )
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6, 
                  child: MyDraggableSheet(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0XFF05792B),
        currentIndex: idx,
        iconSize: 28,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: (int index) {
          setState(() {
            idx = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_outlined),
            activeIcon: Icon(Icons.play_arrow),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // selectedLabelStyle: TextStyle(
        //   color: Colors.green,
        //   fontWeight: FontWeight.bold,
        //   fontSize: 24,
        // ),
        // unselectedLabelStyle: TextStyle(
        //   color: Colors.green,
        //   fontSize: 12,
        // ),
        // onTap: (int index) {
        //   if (index == 0) {
        //     // Handle the first item tap
        //   } else if (index == 1) {
        //     // Handle the second item tap
        //   } else if (index == 2) {
        //     // Handle the third item tap
        //   } else if (index == 3) {
        //     // Handle the fourth item tap
        //   }
        // },
        // items: [
        //   BottomNavigationBarItem(
        //     icon: ColorFiltered(
        //       colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn),
        //       child: Image.asset('assets/images/home_icon.png',
        //           width: 24, height: 24),
        //     ),
        //     label: 'Home',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: ColorFiltered(
        //       colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn),
        //       child:
        //           Image.asset('assets/images/cart.png', width: 24, height: 24),
        //     ),
        //     label: 'Cart',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: ColorFiltered(
        //       colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn),
        //       child: Image.asset('assets/images/play_button_icon.png',
        //           width: 24, height: 24),
        //     ),
        //     label: 'Live',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: ColorFiltered(
        //       colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn),
        //       child:
        //           Image.asset('assets/images/user.png', width: 24, height: 24),
        //     ),
        //     label: 'Profile',
        //   ),
        // ],
      ),
      // bottomSheet: isBottomSheetOpen
      //     ? CustomBottomSheetWidget()
      //     : SizedBox.shrink(),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
class SmallButton extends StatelessWidget {
  final String text;
  final bool isFirst;
  final VoidCallback? onPressed; // Nullable VoidCallback

  const SmallButton({
    Key? key,
    required this.text,
    this.isFirst = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01),
      child: SizedBox(
        height: 50.0,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 35.0),
            backgroundColor: isFirst ? Colors.blue : Colors.white,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black, // Text color
            ),
          ),
        ),
      ),
    );
  }
}



class MyDraggableSheet extends StatelessWidget {
  const MyDraggableSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.05, // Initially closed
      minChildSize: 0.05,
      maxChildSize: 0.95, // Fully opened
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0XFFE1EFE6),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(22),
              topRight: Radius.circular(22),
            ),
          ),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              const TopButtonIndicator(),
              const SliverToBoxAdapter(
                child: BottomSheetDummyUI(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TopButtonIndicator extends StatelessWidget {
  const TopButtonIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Container(
            width: 100,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        7,
            (index) => BottomSheetDummyUI(),
      ),
    );
  }
}

class BottomSheetDummyUI extends StatefulWidget {
  const BottomSheetDummyUI({Key? key}) : super(key: key);

  @override
  State<BottomSheetDummyUI> createState() => _BottomSheetDummyUIState();
}

class _BottomSheetDummyUIState extends State<BottomSheetDummyUI> {
  var chosenValue;

  List<String> languageList = ["English", "Hindi" , "French" , "Spanish"];
  List<String> categoryNames = [
    'All',
    'Rice',
    'Salt',
    'Biscuit',
    'Milk',
    'Coconut'
  ];
  List<String> numberRangeList = ["\$200.00 - \$400.00", "\$500.00 - \$600.00" , "\$700.00 - \$900.00"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green.shade700,
                borderRadius: BorderRadius.circular(20)
            ),
            child: DropdownButton<String>(
              elevation: 1,
              underline: SizedBox(), // to remove underline
              isExpanded: true,
              hint: const Text("Select"),
              iconSize: 50,
              iconEnabledColor: Colors.black,
              icon: const Icon(Icons.arrow_drop_down_sharp,size: 25,),
              value: chosenValue ,
              style: TextStyle(fontSize: 16,color: Colors.green, fontWeight: FontWeight.normal),
              items: languageList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState((){
                  chosenValue = value;
                });
              },
              alignment:AlignmentDirectional.centerStart ,
              iconDisabledColor:Colors.purple,
              dropdownColor: Colors.lime,
              isDense: true,
              disabledHint: Container(
                color: Colors.deepOrange,
              ),
              selectedItemBuilder: (BuildContext context) {
                return languageList!.map<Widget>((String item) {
                  //This widget is shown after you select an item
                  return Container(
                    alignment: Alignment.centerLeft,
                    constraints: const BoxConstraints(minWidth: 100),
                    child: Text(
                      item,
                      style: const TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600),
                    ),
                  );
                }).toList();
              },
            ),
          ),
          SizedBox(height: 8,),
          Align(alignment: Alignment.topLeft, child: Text('Category List', style: TextStyle(color: Colors.black, fontSize: 18),),),
          SizedBox(height: 8,),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: categoryNames.map((categoryName) {
                return SmallButton(text: categoryName);
              }).toList(),
            ),
          ),
          SizedBox(height: 8,),
          Align(alignment: Alignment.topLeft, child: Text('Price Range', style: TextStyle(color: Colors.black, fontSize: 18),),),
          SizedBox(height: 8,),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
            ),
            child: DropdownButton<String>(
              elevation: 1,
              underline: SizedBox(), // to remove underline
              isExpanded: true,
              hint: const Text("Select"),
              iconSize: 50,
              iconEnabledColor: Colors.black,
              icon: const Icon(Icons.arrow_drop_down_sharp,size: 25,),
              value: chosenValue ,
              style: TextStyle(fontSize: 16,color: Colors.green, fontWeight: FontWeight.normal),
              items: numberRangeList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState((){
                  chosenValue = value;
                });
              },
              alignment:AlignmentDirectional.centerStart ,
              iconDisabledColor:Colors.purple,
              dropdownColor: Colors.lime,
              isDense: true,
              disabledHint: Container(
                color: Colors.deepOrange,
              ),
              selectedItemBuilder: (BuildContext context) {
                return numberRangeList!.map<Widget>((String item) {
                  //This widget is shown after you select an item
                  return Container(
                    alignment: Alignment.centerLeft,
                    constraints: const BoxConstraints(minWidth: 100),
                    child: Text(
                      item,
                      style: const TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600),
                    ),
                  );
                }).toList();
              },
            ),
          ),
        ],
      ),
    );
  }
}



/*
* SizedBox(
                      height: 600, // Adjust the height according to your needs
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: (10 / 2).ceil(), // Number of rows needed for 10 cards with 2 cards in each row
                        itemBuilder: (BuildContext context, int index) {
                          // Calculate the starting index for the current row
                          int startingIndex = index * 2;
                          // Calculate the ending index for the current row
                          int endingIndex = startingIndex + 2;

                          // Generate a sublist of product card widgets for the current row
                          List<ProductCardWidget> productCards = List.generate(
                            endingIndex - startingIndex,
                                (cardIndex) => ProductCardWidget(
                              imagePath: 'assets/images/popular_item_chips.png', // Example image path
                              productName: 'Product',
                              productRating: 4.5,
                              soldCount: 8456,
                              productRate: 20.99,
                              discount: '10% off',
                            ),
                          );

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust alignment as needed
                              children: productCards,
                            ),
                          );
                        },
                      ),
                    )
* */
