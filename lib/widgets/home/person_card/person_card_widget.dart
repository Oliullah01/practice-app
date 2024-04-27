import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonCardWidget extends StatelessWidget {
  final String imagePath;
  final String personName;
  final String personLocation;
  final double personRating;

  const PersonCardWidget({
    Key? key,
    required this.imagePath,
    required this.personName,
    required this.personLocation,
    required this.personRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(imagePath),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    personName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    personLocation,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Text(
                        'Rating ${personRating.toString()}',
                        style: TextStyle(color: Colors.grey,fontSize: 12),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: personRating >= 1 ? Colors.orange : Colors.grey,
                        size: 10,
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle button press
                    },
                    icon: Icon(Icons.message_outlined,color: Colors.white,),
                    label: Text('Message',style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green.shade700),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 48), // Adjust padding
                      ),
                    ),
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
