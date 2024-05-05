import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';

class AddressBottomSheet extends StatefulWidget {
  const AddressBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddressBottomSheet> createState() => _AddressBottomSheetState();
}

class _AddressBottomSheetState extends State<AddressBottomSheet> {
  int stage = 0;
  String selectedRegion = '';
  String selectedCity = '';
  String selectedArea = '';
  bool isButtonEnabled = false;

  List<Widget> options = [];

  @override
  void initState() {
    super.initState();
    options = [region(), city(), area()];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close_rounded),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Select Your Area',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Divider(
                thickness: 3,
                color: Colors.green.shade100,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: CustomTextFormFieldWidget(
                prefix: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
                          child: SizedBox(
                            width: 8,
                            height: 8,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green.shade700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 4.h),
                        Text(
                          'Region',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 200.h),
                        Text(selectedRegion),
                      ],
                    ),
                    SizedBox(height: 8),
                    if (selectedRegion.isNotEmpty)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    16.h, 16.v, 8.h, 16.v),
                                child: SizedBox(
                                  width: 8,
                                  height: 8,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green.shade700,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              Text(
                                'City',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(selectedCity),
                        ],
                      ),
                    if (selectedCity.isNotEmpty)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    16.h, 16.v, 8.h, 16.v),
                                child: SizedBox(
                                  width: 8,
                                  height: 8,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green.shade700,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              Text(
                                'Area',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          selectedArea.isEmpty
                              ? Text('Selecting below...')
                              : Text(selectedArea),
                        ],
                      ),
                  ],
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 52.v,
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select the ${selectedRegion.isNotEmpty ? "City" : "Region"}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: options[stage],
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: ElevatedButton(
                onPressed: isButtonEnabled ? () {

                } : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isButtonEnabled
                      ? Colors.green.shade700
                      : Colors.grey.shade400,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide.none,
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget region() {
    List<String> regions = [
      'Dhaka',
      'Chattogram',
      'Khulna',
      'Rajshahi',
      'Mymensingh',
      'Rangpur',
      'Sylhet',
      'Barisal',
    ];
    return SingleChildScrollView(
      child: Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView.builder(
          itemCount: regions.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(regions[index]),
              onTap: () {
                setState(() {
                  selectedRegion = regions[index];
                  stage = 1; // Show city list
                  isButtonEnabled = false; // Disable Apply button
                });
              },
            );
          },
        ),
      ),
    );
  }

  Widget city() {
    List<String> cities = [
      'Dhaka-North',
      'Keranigonj',
      'Faridpur',
      'Gazipur',
      'Gopalganj',
      'Kishoreganj',
      'Dhaka-South',
      'Manikganj',
    ];
    return SingleChildScrollView(
      child: Container(
        height: 340,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(cities[index]),
              onTap: () {
                setState(() {
                  selectedCity = cities[index];
                  selectedArea = ''; // Reset selected area
                  stage = 2; // Show area list
                  isButtonEnabled = false; // Disable Apply button
                });
              },
            );
          },
        ),
      ),
    );
  }

  Widget area() {
    List<String> areas = [
      'Abdul Bani Road',
      'Abdul Hadi Road',
      'Abdul Dali Road',
      'Abhidas Lane',
      'Kochukhet',
      'Mirpur',
      'Dhaka-South',
      'Manikganj',
    ];
    return SingleChildScrollView(
      child: Container(
        height: 340,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: areas.map((area) {
            return ListTile(
              title: Text(area),
              onTap: () {
                setState(() {
                  selectedArea = area;
                  isButtonEnabled = true; // Enable Apply button
                  //stage = null;
                });
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

/**
 *
 *
 * */