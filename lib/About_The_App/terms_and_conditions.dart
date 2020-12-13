import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
class Terms_And_Conditions extends StatelessWidget {
  double resized_width;
  double resized_height;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    resized_width = (mediaQueryData.size.width / 360);
    resized_height = (mediaQueryData.size.height / 640);
    return Scaffold(
      backgroundColor: Constants_Class().primary_color_code,
      body: Column(
        children: [
          Container(
            height: resized_height * 100,
            width: double.infinity,
            child: Align(
                alignment: Alignment(0, 1 / resized_height * 0.40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: (mediaQueryData.size.width  / 360 )* 20,),
                  IconButton(icon:Icon(Icons.keyboard_backspace_sharp),color: Colors.white,
                  onPressed: ()
                    {
                      Navigator.of(context).pop();
                    },),
                    SizedBox(width: (resized_width )* 20,),
                    Text('Terms and Conditions',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                  ],
                )),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 5.0,
                  ),
                ],
              ),
              padding: EdgeInsets.all(15),
              child:Padding(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Terms and Conditions',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text('Welcome to Website Name! \n \nThese terms and conditions outline the rules and regulations for the use of Company Name\'s Website, located at Website.com.By accessing this website we assume you accept these terms and conditions. Do not continue to use Website Name if you do not agree to take all of the terms and conditions stated on this page.\n The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: “Client”, “You” and “Your” refers to you, the person log on this website and compliant to the Company\'s terms and conditions. “The Company”, “Ourselves”, “We”, “Our” and “Us”, refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves. \n\nAll terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.'),
                      SizedBox(height: 20,),
                      Text('Cookies',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text('We employ the use of cookies. By accessing Website Name, you agreed to use cookies in agreement with the Company Name\'s Privacy Policy.\n\nMost interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies. '),
                      SizedBox(height: 20,),
                      Text('Licenses',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text('Unless otherwise stated, Company Name and/or its licensors own the intellectual property rights for all material on Website Name. All intellectual property rights are reserved. You may access this from Website Name for your own personal use subjected to restrictions set in these terms and conditions.\n\nThis Agreement shall begin on the date hereof.\n\nParts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Company Name does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Company Name,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Company Name shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.\n\nCompany Name reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.'),
                    ],
                  ),
                ),
              ) ,
            ),
          ),
        ],
      ),
    );
  }
}
