import 'package:flutter/material.dart';
import 'package:satiate_task/order_medicine.dart';
import 'package:satiate_task/profile_page.dart';
import 'package:satiate_task/request_call_back.dart';
import 'package:satiate_task/main_page.dart';
class Index_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,200 ,0, 0),
        child: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                child: Text('Request Call Back Screen'),
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Request_Call_Back()),
                  );
                },
              ),
              SizedBox(height: 20,),
              FlatButton(
                color: Colors.blue,
                child: Text('Order Medicine'),
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Order_Medicine()),
                  );
                },
              ),
              SizedBox(height: 20,),
              FlatButton(
                color: Colors.yellow,
                child: Text('Account Info'),
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile_Page()),
                  );
                },
              ),
              SizedBox(height: 20,),
              FlatButton(
                color: Colors.purple,
                child: Text('MFine Main Page'),
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Main_Page()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
