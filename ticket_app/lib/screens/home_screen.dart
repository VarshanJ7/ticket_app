import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/styles/media.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/hotels.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> ticketList = [
    {"id": 1, "destination": "New York", "price": 250},
    {"id": 2, "destination": "London", "price": 300},
    {"id": 3, "destination": "Tokyo", "price": 400},
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      // we want scrollable body
      // so we use list view
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(

            padding: const EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headLineStyle3
                          ),
                      
                        
                        SizedBox(height: 5),
                        Text(
                          "Book Tickets ",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
width: 50,
height:50,
decoration: BoxDecoration( 

borderRadius: BorderRadius.circular(10),
image: DecorationImage(image: AssetImage(AppMedia.logo))


),
 

                    ),
                  ],
                ),

                const SizedBox(height: 20),
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  decoration: BoxDecoration( 

borderRadius: BorderRadius.circular(10),color:Color(0xFFF4F6FD),



),

                  child: Row(
                   //mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [Icon(FluentSystemIcons.ic_fluent_search_regular,color:Color(0xFFBFC205) ,),
                      Text("Search  ")],
                  ),
                ),
              ],
            ),  
          ),
        const SizedBox(height: 40),
        AppDoubleText(bigText: "Upcoming Flights", smallText: "View all "),
const SizedBox(height: 20),
        Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

                children: ticketList.map((singleticket) => TicketView()).toList(),
              ),
            ),
          ),
          const SizedBox(height: 20),
             AppDoubleText(bigText: "Hotels", smallText: "View all "),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
               children: [
                 Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Hotels()),
                  Hotels(),
               ],
             )),
        ],
 

        
      ),
    );
  }
}    
