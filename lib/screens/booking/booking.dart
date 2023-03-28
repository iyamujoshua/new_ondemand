import 'package:flutter/material.dart';

import 'Tabs/Upcoming.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TabBar(
            unselectedLabelColor: Color.fromARGB(54, 7, 17, 27),
            
            dividerColor: Color.fromARGB(226, 7, 17, 27),
            indicatorColor: Color(0xff5E17EB),
            labelColor: Color(0xff5E17EB),
            controller: tabController,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
            tabs: [
              Tab(
                child: Center(
                    child: Text(
                  "Upcoming",
                )),
              ),
              Tab(
                child: Center(
                    child: Text(
                  "Previous",
                )),
              ),
              Tab(
                child: Center(
                    child: Text(
                  "Ongoing",
                )),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Upcoming(),
              Upcoming(),
              Upcoming(),
            ]),
          ),
        ],
      ),
    ));
  }
}
