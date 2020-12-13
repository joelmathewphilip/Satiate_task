import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/doctor/doctor_profile.dart';

class Top_Specialities extends StatelessWidget {
  List<String> heading;
  List<Color> card_colors;
  double resized_width;
  double resized_height;
  Top_Specialities({this.heading, this.card_colors});
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    resized_width = (mediaQueryData.size.width / 360);
    resized_height = (mediaQueryData.size.height / 640);
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 10),
      child: GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 0.7),
          children: List.generate(
            heading.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Doctor_Profile()),
                  );
                },
                child: Container(
                  child: Column(
                    children: [
                      heading[index] != "Consult Now"
                          ? Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11.0),
                                border: Border.all(
                                  color: Constants_Class().primary_color_code,
                                  width: 2,
                                ),
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                      'assets/doctor_small_image.jpg',
                                      scale: 5)),
                            )
                          : Container(
                              child: Center(
                                  child: Text(
                                'Consult Now',
                                style: TextStyle(
                                    color:
                                        Constants_Class().primary_color_code),
                              )),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color:
                                          Constants_Class().primary_color_code,
                                      width: 3)),
                              width: 102,
                              height: 104,
                            ),
                      Expanded(
                        child: Text(
                          heading[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
