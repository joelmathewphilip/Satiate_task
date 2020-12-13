import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satiate_task/main_page/symptom_container.dart';

class Symptoms extends StatelessWidget {
  double resized_height;
  double resized_width;
  Color container_color = Color.fromRGBO(242, 242, 242, 1);
  List<String> most_selected_issues = [
    "Fever",
    "Acne",
    "Runny Nose",
    "Cough",
    "Headache",
    "Hairfall",
    "Vomiting/Nausea",
    "Dry Skin",
    "Obesity",
    "Abdominal Pain",
    "Constipation",
    "Rashes",
    "Throat Pain",
    "Back Pain",
    "Gas",
    "Period Related Issues",
    "Other"
  ];

  List<String> common_health_issues = [
    "Fever",
    "Blocked Nose",
    "Cough",
    "Runny Nose",
    "Throat Pain",
    "Headache",
    "Loose Motion",
    "Constipation",
    "Gas",
    "Vomiting/ Nausea",
    "High Cholestrol",
    "Diabetes",
    "High BP",
    "Low BP",
    "Migraine",
    "Back Pain",
    "Take a second opionion",
    "Other"
  ];
  List<String> skin_and_health_issues = [
    "Pimples/Acne",
    "Reddish Skin",
    "Rashes",
    "Spots on Skin",
    "Itching",
    "Dark Circles",
    "Hairfall",
    "Dry Scalp/Dandruff",
    "Other"
  ];
  List<String> bonee_and_joint_problems = [
    "Back Pain",
    "Neck Pain",
    "Lower Backpain",
    "Elbow Pain",
    "Joint Pain",
    "Sprain",
    "Arthritis",
    "Heel Pain",
    "Fracture",
    "Left Knee Pain",
    "Right Knee Pain",
    "Left Shoulder Pain",
    "Other"
  ];
  List<String> fertility_related_problems = [
    "Repeated Miscarriages",
    "IVF Related query",
    "Tubal block",
    "IUI Related query",
    "Other"
  ];

  List<String> diet_and_nutritional_cousenlling = [
    "Underweight",
    "Overweight",
    "Diet for Diabetes",
    "Diet for PCOD/PCOS",
    "Diet for Hypertension/ High Sugar",
    "Other"
  ];

  List<String> Dentistry = [
    "Tooth Sensitivity",
    "Missing Teeth",
    "Jaw Pain",
    "Toothache",
    "Dental Caries",
    "Red and bleeding gums",
    "Tooth discolouration",
    "Crooked Teeth",
    "Black Gums",
    "Swollen Guns",
    "Other"
  ];

  List<int> selected_most_selected_issue = [];
  List<int> selected_common_health_issue=[];
  List<int> selected_skin_health_issue = [];
  List<int> selected_bones_and_joints_problems=[];
  List<int> selected_dentistry=[];
  List<int> selected_fertility=[];
  List<int> selected_diet_and_nutrition=[];
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    resized_height = mediaQueryData.size.height / 640;
    resized_width = mediaQueryData.size.width / 360;
    return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: resized_height * 22,
                ),
                Center(
                  child: Text(
                    'Who is the patient?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: resized_height * 05,
                ),
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      width: resized_width * 160,
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: resized_width * 10,
                          ),
                          Image.asset(
                            'assets/girl_face_icon.jpg',
                            scale: 21,
                          ),
                          SizedBox(
                            width: resized_width * 20,
                          ),
                          Text(
                            'Charvi',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: resized_height * 14,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 5, 15, 0),
                  child: Text('Search or Choose Your Health Issue',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
                SizedBox(
                  height: resized_height * 25,
                ),
                Symptom_Container(
                  data: most_selected_issues,
                  heading2: "Most Selected Issues",
                  selected_elements: selected_most_selected_issue,
                  add_element: (index2)
                  {
                    selected_most_selected_issue.add(index2);
                  },
                ),
                SizedBox(
                  height: resized_height * 25,
                ),
                Symptom_Container(
                  heading2: "Common Health Issues",
                  data: common_health_issues,
                  selected_elements: selected_common_health_issue,
                  add_element: (index2)
                  {
                    selected_common_health_issue.add(index2);
                  },
                ),
                SizedBox(
                  height: resized_height * 25,
                ),
                Symptom_Container(
                  heading2: "Skin and Health Issues",
                  data: skin_and_health_issues,
                  selected_elements: selected_skin_health_issue,
                  add_element: (index2)
                  {
                    selected_skin_health_issue.add(index2);
                  },
                ),
                SizedBox(
                  height: resized_height * 25,
                ),
                Symptom_Container(
                  heading2: "Bones & Joint Problems",
                  data: bonee_and_joint_problems,
                  selected_elements: selected_bones_and_joints_problems,
                  add_element: (index2)
                  {
                    selected_bones_and_joints_problems.add(index2);
                  },
                ),
                SizedBox(
                  height: resized_height * 25,
                ),
                Symptom_Container(
                  heading2: "Fertility Related Problems",
                  data: fertility_related_problems,
                  selected_elements: selected_fertility,
                  add_element: (index2)
                  {
                    selected_fertility.add(index2);
                  },
                ),
                SizedBox(
                  height: resized_height * 25,
                ),
                Symptom_Container(
                  heading2: "Diet & Nutritional Counselling",
                  data: diet_and_nutritional_cousenlling,
                  selected_elements: selected_diet_and_nutrition,
                  add_element: (index2)
                  {
                    selected_diet_and_nutrition.add(index2);
                  },
                ),
                SizedBox(
                  height: resized_height * 25,
                ),
                Symptom_Container(
                  heading2: "Dentistry",
                  data: Dentistry,
                  selected_elements: selected_dentistry,
                  add_element: (index2)
                  {
                    selected_dentistry.add(index2);
                  },
                )
              ],
            ),
        )
    );
  }
}
