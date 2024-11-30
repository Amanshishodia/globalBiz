import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:globalbiz/widgets/customAppBar.dart';
import 'package:globalbiz/widgets/inputBox.dart';


class Selectbussinessactivity extends StatefulWidget {
  const Selectbussinessactivity({super.key});

  @override
  State<Selectbussinessactivity> createState() =>
      _SelectbussinessactivityState();
}

final bool isclicked = false;

class _SelectbussinessactivityState extends State<Selectbussinessactivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Select Your Bussiness Activity",

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Inputbox(),
                Container(
                  height: 300,
                  width: 257,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Checkbox(
                          //     value: isclicked,
                          //     onChanged: on),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
