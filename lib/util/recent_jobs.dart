import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  // Data for each cards
  final String companyName;
  final String jobTitle;
  final String logoPath;
  final int hourlyRate;
// value constructor
  RecentJobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoPath,
    required this.hourlyRate,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[200],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(7),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
              ),
              child: Image.asset(logoPath),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(companyName, style: TextStyle(fontSize: 15))
              ],
            ),
            Container(
                height: 40,
                margin: EdgeInsets.only(bottom: 30),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white)),
                child: Text(
                  '\$' + hourlyRate.toString() + '/hr',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
