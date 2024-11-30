import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globalbiz/pages/bussiness_objective/selectbussinessactivity.dart';
import 'package:globalbiz/widgets/customAppBar.dart';


// Create a model class for Grid Item
class GridItem {
  final String title;
  final String imagePath;

  GridItem(this.title, this.imagePath);
}

class Nature extends StatefulWidget {
  const Nature({super.key});

  @override
  State<Nature> createState() => _NatureState();
}

// List of data for the GridView
List<GridItem> gridData = [
  GridItem('Occupational', 'asset/occupation.png'),
  GridItem('Tourism', 'asset/tourism.png'),
  GridItem('Industrial', 'asset/industry.png'),
  GridItem('Commercial', 'asset/commercial.png'),
  GridItem('Agriculture', 'asset/agricultural.png'),
  GridItem('Professional', 'asset/professional.png'),
];

class _NatureState extends State<Nature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Identify the Nature of Your Business Activity',
              ),
              SizedBox(height: 10),
              // GridView with dynamic data from the gridData list
              SizedBox(
                height: 450, // Adjust the height as per your requirement
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of items in a row
                    crossAxisSpacing: 10, // Horizontal space between grid items
                    mainAxisSpacing: 10, // Vertical space between grid items
                    childAspectRatio: 1, // Aspect ratio of grid items
                  ),
                  itemCount: gridData.length, // Number of items in the grid
                  itemBuilder: (BuildContext context, int index) {
                    // Get the current item from the list
                    final item = gridData[index];

                    return InkWell(
                      onTap: () {
                        Get.to(Selectbussinessactivity());
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white, // Background color
                            borderRadius:
                                BorderRadius.circular(12), // Border radius
                            border: Border.all(
                                color: Colors.grey,
                                width: 1), // Border with color and width
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.1), // Shadow color
                                blurRadius: 5, // Shadow blur radius
                                offset: Offset(0, 3), // Offset of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                item.imagePath,
                                height: 50,
                                width: 50,
                              ),
                              Text(
                                item.title,

                              ),
                            ],
                          )),
                    );
                  },
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
