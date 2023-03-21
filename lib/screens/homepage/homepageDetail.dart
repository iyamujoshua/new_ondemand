import 'package:flutter/material.dart';

import '../card_slide.dart';

class HompageDeatail extends StatefulWidget {
  const HompageDeatail({Key? key}) : super(key: key);

  @override
  State<HompageDeatail> createState() => _HompageDeatailState();
}

class _HompageDeatailState extends State<HompageDeatail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xffF4F4F4),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: GestureDetector(
              onTap: () {
                // Handle the search bar click event
                print("Search bar");
              },
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Text(
                    "Search for a service",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CardCarousel(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Popular services",
                ),
              ),
              InkWell(
                  onTap: (() {
                    print("you tapped me");
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "view all",
                      style: TextStyle(color: Colors.purple),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("asset/head.png")),
                      Text('Home/Office\nCleaning'),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("asset/blue.png")),
                      Text('Dry\nCleaning'),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("asset/pics.png")),
                      Text('Electrical\nService'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("asset/head.png")),
                      Text('Home/Office\nCleaning'),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("asset/blue.png")),
                      Text('Dry\nCleaning'),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("asset/pics.png")),
                      Text('Electrical\nService'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("asset/head.png")),
                      Text('Home/Office\nCleaning'),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("asset/blue.png")),
                      Text('Dry\nCleaning'),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("asset/pics.png")),
                      Text('Electrical\nService'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),

          Container(

            padding: EdgeInsets.all(10),
            color: Colors.grey,
            child: Text("View more",),
          )
          
          
        ],
      ),
    );
  }
}
