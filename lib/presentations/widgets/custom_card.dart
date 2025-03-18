import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      width: double.infinity,
      height: 522,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                      "assets/images/profile.png"), // Change to your asset path
                ),
                SizedBox(width: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Adolf Benzema',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('xyzabc@gmail.com'),
                  ],
                ),
                MyButton(onPressed: (){}, text: "open")
              ],
            ),
            SizedBox(height: 8),
            // Text(
            //   'Lörem ipsum dire ödepläster estetisk kompetens ressade. Neolern protäsm astrotik, attt semikode dinagt att bepärat ponar.',
            //   style: TextStyle(fontSize: 14),
            // ),
            // SizedBox(height: 16),
            // DashedDivider(
            //   color: Colors.amber, // Color of the dashes
            //   thickness: 2, // Thickness of the dashes
            //   dashPattern: [10, 5], // Dash length: 10, Gap length: 5
            // ),
            // SizedBox(height: 8),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text('Size : 13 inch'),
            //     Text('Weight : 5 kg'),
            //     Text('Quantity : 5'),
            //   ],
            // ),
            // SizedBox(height: 8),
            // Row(
            //   children: [
            //     Text('Pick-up Location : '),
            //     Icon(Icons.location_on, color: Colors.amber),
            //     Text('Street 21, New York, USA'),
            //   ],
            // ),
            // SizedBox(height: 8),
            // Row(
            //   children: [
            //     Text('Delivery Location : '),
            //     Icon(Icons.location_on, color: Colors.amber),
            //     Text('Street 21, New York, USA'),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
