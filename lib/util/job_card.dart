import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  // Data for each cards
  final String companyName;
  final String jobTitle;
  final String logoPath;
  final int hourlyRate;
// value constructor
  JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoPath,
    required this.hourlyRate,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 240,
          color: Colors.grey[200],
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    child: Image.asset(logoPath),
                  ),
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[500]),
                      child: Text(
                        'Part Time',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  jobTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  '\$' + hourlyRate.toString() + '/hr',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
