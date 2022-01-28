import 'package:flutter/material.dart';
import 'package:job_design/util/job_card.dart';
import 'package:job_design/util/recent_jobs.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  // Data for cards
  final List jobForYou = [
    ['Google', 'Software Engr', 'assets/icons/google.png', 85],
    ['MicroSoft', 'Tech Support', 'assets/icons/micro_soft.png', 65],
    ['Next', 'Game Designer', 'assets/icons/next.png', 75],
    ['Apple', 'UI Designer', 'assets/icons/apple.png', 45],
    ['Facebook', 'User Experience', 'assets/icons/fb.png', 56],
    ['Nike', 'Product Manager', 'assets/icons/nike.png', 70],
    ['Master Card', 'CTO', 'assets/icons/master_card.png', 145],
    ['Discord', 'QA', 'assets/icons/discord.png', 40],
  ];

  final List recentJobs = [
    ['Master Card', 'CTO', 'assets/icons/master_card.png', 145],
    ['Apple', 'UI Designer', 'assets/icons/apple.png', 45],
    ['Next', 'Game Designer', 'assets/icons/next.png', 75],
    ['Nike', 'Product Manager', 'assets/icons/nike.png', 70],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),

          // app bar
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 70,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: IconButton(
                iconSize: 50,
                color: Colors.grey[800],
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
          ),

          SizedBox(height: 25),
          // discover a new path
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text('Discover a New Path',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
          ),
          // search bar
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.search),
                                hintText: 'Search for a job',
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[900]),
                  padding: EdgeInsets.all(12),
                  height: 50,
                  child: Image.asset(
                    'assets/icons/filter.png',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text('For You',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
          ),
          SizedBox(height: 25),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobForYou[index][0],
                  jobTitle: jobForYou[index][1],
                  logoPath: jobForYou[index][2],
                  hourlyRate: jobForYou[index][3],
                );
              },
              itemCount: jobForYou.length,
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text('Recently Added',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                  itemCount: recentJobs.length,
                  itemBuilder: (context, index) {
                    return RecentJobCard(
                      companyName: recentJobs[index][0],
                      jobTitle: recentJobs[index][1],
                      logoPath: recentJobs[index][2],
                      hourlyRate: recentJobs[index][3],
                    );
                  }),
            ),
          ),
          SizedBox(height: 10.0)
        ],
      ),
    );
  }
}
