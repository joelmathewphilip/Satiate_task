import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';

class Symptom_Container extends StatelessWidget {
  Function add_element;
  List<int> selected_elements= [];
  List<String> data;
  String heading2;
  //final _bloc = Symptoms_Bloc();
  double resized_height;

  double resized_width;
  Symptom_Container(
      {this.heading2, this.data, this.add_element, this.selected_elements});
  Color container_color = Color.fromRGBO(242, 242, 242, 1);
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    resized_height = mediaQueryData.size.height / 640;
    resized_width = mediaQueryData.size.width / 360;
    return Container(
      padding: EdgeInsets.fromLTRB(19, 10, 19, 10),
      color: container_color,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                heading2,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Colors.black,
                thickness: 3,
                indent: 2,
                height: 2,
              )
            ],
          ),
          SizedBox(
            height: resized_height * 15,
          ),
          GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                mainAxisSpacing: 5,
              ),
              children: List.generate(data.length, (index2) {
                //return StreamBuilder(
                  //stream: _bloc.symptomsState,
                  //builder: (context, snapshot) {
                    //if(snapshot.hasData) {
                      return GestureDetector(
                        onTap: () {
                          // if(snapshot.data.contains(index2))
                          //   {
                          //     _bloc.symptomsStateSink.add(Subtract(index: index2));
                          //   }
                          // else
                          //   {
                          //     _bloc.symptomsStateSink.add(Add(index: index2));
                          //   }

                        },
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: resized_width * 03,
                            ),
                            Card(
                              color: selected_elements.contains(index2) ? Colors
                                  .blueAccent : null,
                              child: Padding(
                                padding: data[index2] != "Other"
                                    ? const EdgeInsets.all(8.0)
                                    : const EdgeInsets.all(8.0),
                                child: selected_elements.contains(index2)
                                    ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 18,
                                )
                                    : data[index2] == "Other"
                                    ? CircleAvatar(
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  radius: 12,
                                  backgroundColor: Constants_Class().primary_color_code,
                                )
                                    : Icon(Icons.sick),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              width: resized_width * 10,
                            ),
                            Expanded(
                                child: Text(
                                  data[index2],
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14.5,
                                  ),
                                )),
                          ],
                        ),
                      );
                   // }
                    // else
                    //   {
                    //     return Center(child: CircularProgressIndicator());
                    //   }
                  }
               // );
              //}
              ))
        ],
      ),
    );
  }
}
