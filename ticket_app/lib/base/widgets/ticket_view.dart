import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
         margin: EdgeInsets.only(right: size.width * 0.04),
        child: Column(            //column ont takes as much space as its children needs 
          children: [
           

           //upper part tiket 
            Container( 

             
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                //show departure and destination wi th icons 
                  Row(
                    children: [

                      TextStyleThird(text: 'NYC')
                      ,
            
                      Expanded(child: Container()),
            
                      BigDot(),
            
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height:24,
                              child: AppLayoutbuilderWidget(randomDivider: 6)),
            
                            Center(child: Transform.rotate(angle: 1.57,child: Icon(Icons.local_airport_rounded, color: Colors.white))),
                          ],
                        ),
                      ),
            
                      // stack is used to put two widgets on top of each other
                      BigDot(),
            
                      Expanded(child: Container()),
            
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 3), 
            
            //show departure and dest wit time 
                   Row(
                    children: [
                      SizedBox(
                        width:100,
                        child: Text(
                          "New-York",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                      ),
            
                      Expanded(child: Container()),
            
                    Text(
                        "8H 30M",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
            
                      Expanded(child: Container()),
            
                      Text(
                        "London",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  )
            
                
                ],
              ),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21)
            
            
            
            
                )
              ),
            
             
            
                
            
            
            
            
            
            
            
            
            
              
            
            
            
            
            
            
            ),
 //dotes 
Container(
color: AppStyles.ticketBlue,
child: Row(
 
children: [ 
BigCircle(isRight: false,),
Expanded(child: AppLayoutbuilderWidget(randomDivider: 10)),
BigCircle(isRight: true, )


],

)

),

//bottom part of the ticket
Container(
           
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                //show departure and destination wi th icons 
                  Row(
                    children: [
                      Text(
                        "1 MAY",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
            
                      Expanded(child: Container()),
            
                      BigDot(),
            
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height:24,
                              child: AppLayoutbuilderWidget(randomDivider: 6)),
            
                            Center(child: Transform.rotate(angle: 1.57,child: Icon(Icons.local_airport_rounded, color: Colors.white))),
                          ],
                        ),
                      ),
            
                      // stack is used to put two widgets on top of each other
                      BigDot(),
            
                      Expanded(child:Container()),
            
                      Text(
                        "23",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 3), 
            
            //show departure and dest wit time 
                   Row(
                    children: [
                      Text(
                        "DATE",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
            
                      Expanded(child: Container()),
            
                    Text(
                        "8:00 AM",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
            
                      Expanded(child: Container()),
            
                      Text(
                        "NUMBER",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  )
            
                
                ],
              ),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)
            
            
            
            
                )
              ),
            
             
            
                
            
            
            
            
            
            
            
            
            
              
            
            
            
            
            
            
            )
          ],
        ),
      ),
    );
  }
}
