/*import 'package:datingapp/screens/bottomScreen/profile/subscreenlist/utiles/editprofile/edit_profile_utiles.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../prefereces_screen.dart';
import 'new_plan.dart';
import 'new_plan_page.dart';

class TripPlanning extends StatefulWidget {
  const TripPlanning({super.key});

  @override
  State<TripPlanning> createState() => _TripPlanningState();
}

class _TripPlanningState extends State<TripPlanning> {


  DateTimeRange? _selectedDateRange;

  Future<void> _selectDateRange(BuildContext context) async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
      initialDateRange: _selectedDateRange ?? DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(Duration(days: 7)),
      ),
    );

    if (newDateRange != null) {
      setState(() => _selectedDateRange = newDateRange);
    }
  }

  final PlanController myOrientationController =
  Get.put(PlanController(), permanent: true);


  String? selectedCountry;
  final List<String> countries = [
    "Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Antigua and Barbuda", "Argentina", "Armenia", "Australia", "Austria", "Azerbaijan",
    "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Brazil", "Brunei", "Bulgaria", "Burkina Faso", "Burundi",
    "Cabo Verde", "Cambodia", "Cameroon", "Canada", "Central African Republic", "Chad", "Chile", "China", "Colombia", "Comoros", "Congo, Democratic Republic of the", "Congo, Republic of the", "Costa Rica", "Côte d’Ivoire", "Croatia", "Cuba", "Cyprus", "Czech Republic",
    "Denmark", "Djibouti", "Dominica", "Dominican Republic",
    "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Eswatini", "Ethiopia",
    "Fiji", "Finland", "France",
    "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Greece", "Grenada", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana",
    "Haiti", "Honduras", "Hungary",
    "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy",
    "Jamaica", "Japan", "Jordan",
    "Kazakhstan", "Kenya", "Kiribati", "Korea, North", "Korea, South", "Kuwait", "Kyrgyzstan",
    "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg",
    "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Mauritania", "Mauritius", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro", "Morocco", "Mozambique", "Myanmar",
    "Namibia", "Nauru", "Nepal", "Netherlands", "New Zealand", "Nicaragua", "Niger", "Nigeria", "North Macedonia", "Norway",
    "Oman",
    "Pakistan", "Palau", "Palestine State", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Poland", "Portugal",
    "Qatar",
    "Romania", "Russia", "Rwanda",
    "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Sudan", "Spain", "Sri Lanka", "Sudan", "Suriname", "Sweden", "Switzerland", "Syria",
    "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Timor-Leste", "Togo", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Tuvalu",
    "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "Uruguay", "Uzbekistan",
    "Vanuatu", "Vatican City", "Venezuela", "Vietnam",
    "Yemen",
    "Zambia", "Zimbabwe"
  ];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? destination;
  String? date;
  String? budget;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void savePlan() {
    if (_formKey.currentState!.validate()) {
      final PlanController planController = Get.find<PlanController>();
      planController.addPlan(selectedCountry ?? "No Destination");
      Get.snackbar("Plan Saved", "Your trip to $selectedCountry has been saved!");

      Get.to(() => const NewPlanPage());
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Plan for your next trip',
            style: TextStyle(
                fontSize: 25,
                color: Colors.blue[900])),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image(
            image: AssetImage(
              'assets/images/blue_ring.png',
            ),
          ),
        ),
        actions: [
          IconButton(onPressed:(){
            Get.to(
                NewPlanPage()
          );},
          icon: Icon(Icons.arrow_circle_left_outlined,
          size: 30,
          ),
            color:Colors.blueAccent,

          ),

        ],
      ),
      body:Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Builder(
              builder: (BuildContext context) {
                return ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'where are you going to?',
                          border: OutlineInputBorder( borderRadius: BorderRadius.circular(30)),
                        ),
                        value: selectedCountry,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCountry = newValue;
                          });
                        },
                        items: countries.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),),
                    ),
                    SizedBox(height: 16.0),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),

                      child: CommonButton(
                        colors: [
                          Colors.grey,
                          Colors.grey
                          //Colors.blue,

                        ],

                          onTap: () => _selectDateRange(context),

                        title: 'set the date range',
                        width: Get.width,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "How much is your budget?",
                            border: OutlineInputBorder( borderRadius: BorderRadius.circular(30))
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your budget';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            budget = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),

                      child: CommonButton(
                        colors: [
                          Colors.grey,
                          Colors.grey
                          //Colors.blue,

                        ],
                        onTap: () {
                          orientationBottomSheet();
                        },
                        title: 'Trip Type',
                        width: Get.width,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "Bio",
                            border: OutlineInputBorder( borderRadius: BorderRadius.circular(30))
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a Bio';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            budget = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height:16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),

                      child: CommonButton(
                        colors: [
                          Colors.grey,
                          Colors.grey
                          //Colors.blue,

                        ],
                        onTap: () {
                          interestBottomSheet();
                        },
                        title: 'your  Interests',
                        width: Get.width,
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),

                      child: CommonButton(
                        colors: [
                          Colors.grey,
                          Colors.grey
                          //Colors.blue,

                        ],
                        onTap: () {
                          languageBottomSheet();
                        },
                        title: 'what languages do you speak?',
                        width: Get.width,
                      ),
                    ),
                    SizedBox(
                      height:16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),

                      child: CommonButton(
                        colors: [
                          Colors.grey,
                          Colors.grey
                          //Colors.blue,

                        ],
                        onTap: () {
                          Get.to(PreferencesScreen());
                        },
                        title: 'Preferences',
                        width: Get.width,
                      ),
                    ),

                    SizedBox(height: 40),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),
                      child: CommonButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            final planController = Get.find<PlanController>();
                            planController.toggleButtonVisibility(true); // Show the button
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Your plan is saved successfully!'),
                              ),
                            );
                            Get.to(() => NewPlanPage());
                          }
                        },
                        width: Get.width,
                        title: "Save",
                      ),
                    ),


                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}


*/
