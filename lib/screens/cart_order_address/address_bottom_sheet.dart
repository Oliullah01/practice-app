import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';

class AddressBottomSheet extends StatefulWidget {
  const AddressBottomSheet({super.key});

  @override
  State<AddressBottomSheet> createState() => _AddressBottomSheetState();
}

class _AddressBottomSheetState extends State<AddressBottomSheet> {
  int stage = 0;

  List<Widget> options = [];

  @override
  void initState() {
    super.initState();
    options = [region()];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
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
                  child: Icon(Icons.close_rounded),
                ),
              ),
            ),
            Center(
                child: Text(
              'Select Your Area',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Divider(
                thickness: 3,
                color: Colors.green.shade100,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: CustomTextFormFieldWidget(
                prefix: Row(
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
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                suffix: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      'Selecting below',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 52.v,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select the Region',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: options[stage],
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide.none,
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Apply',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
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
      'Chattograme',
      'Khulna',
      'Rajshahi',
      'Mymansigh',
      'Rangpur',
      'Sylhet',
      'Barisal',
    ];
    return SingleChildScrollView(
      child: Container(
        height: 340,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: ListView.builder(
          itemCount: regions.length * 2 - 1,
          itemBuilder: (context, index) {
            if (index.isOdd) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Divider(
                  thickness: 3,
                  color: Colors.green.shade100,
                ),
              );
            } else {
              int titleIndex = index ~/ 2;
              return ListTile(
                title: Text(regions[titleIndex]),
              );
            }
          },
        ),
      ),
    );
  }
}
