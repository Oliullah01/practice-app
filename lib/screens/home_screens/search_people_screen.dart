import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/home/person_card/person_card_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPeopleScreen extends StatefulWidget {
  const SearchPeopleScreen({super.key});

  @override
  State<SearchPeopleScreen> createState() => _SearchPeopleScreenState();
}

class _SearchPeopleScreenState extends State<SearchPeopleScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _bgColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.v, horizontal: 18.h),
              child: CustomTextFormFieldWidget(
                hintText: ''.tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
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
                //obscureText: _passwordTEController.text.toString(),
                contentPadding: EdgeInsets.symmetric(vertical: 18.v),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Jabbar'),
                Text('25 person found'),
              ],
            ),
            //SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Expanded(
              child: ListView.builder(
                itemCount: peopleData.length,
                itemBuilder: (context, index) {
                  final person = peopleData[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: PersonCardWidget(
                      imagePath: person['imagePath'],
                      personName: person['name'],
                      personLocation: person['location'],
                      personRating: person['rating'],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> peopleData = [
  {
    'name': 'John Doe',
    'location': 'New York, USA',
    'rating': 4.5,
    'imagePath': 'assets/images/person_1.png',
  },
  {
    'name': 'Alice Smith',
    'location': 'London, UK',
    'rating': 3.8,
    'imagePath': 'assets/images/person_2.png',
  },
  {
    'name': 'Alice Smith',
    'location': 'London, UK',
    'rating': 3.8,
    'imagePath': 'assets/images/person_5.png',
  },
  {
    'name': 'Alice Smith',
    'location': 'London, UK',
    'rating': 3.8,
    'imagePath': 'assets/images/person_3.png',
  },
  {
    'name': 'Alice Smith',
    'location': 'London, UK',
    'rating': 3.8,
    'imagePath': 'assets/images/person_4.png',
  },
];



/*
* // Inside SearchPeopleScreen build method
ListView.builder(
  itemCount: peopleData.length,
  itemBuilder: (context, index) {
    final person = peopleData[index];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: PersonCardWidget(
        imagePath: person['imagePath'],
        personName: person['name'],
        personLocation: person['location'],
        personRating: person['rating'],
      ),
    );
  },
),

* */
