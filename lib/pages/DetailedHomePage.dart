import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globalbiz/pages/bussiness_objective/nature.dart';
import 'package:globalbiz/widgets/ImageWithText.dart';
import 'package:globalbiz/widgets/customAppBar.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/CountryController.dart';
import 'package:globalbiz/pages/step_started.dart';
import '../widgets/ClientCorousel.dart';
import '../widgets/CustomTextButton.dart';

class Detailedhomepage extends StatelessWidget {
  final String selectedCountry;
  Detailedhomepage({super.key,required this.selectedCountry});

  final CountryController countryController = Get.put(CountryController());





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Trusted Leader For Business',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: const Color(0xFF1B36A0),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '#1 Online Company Setup\nServices in ${selectedCountry}',
                    style: GoogleFonts.poppins(
                      fontSize: 36,
                      color: const Color(0xFF1B36A0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset('asset/homepage.png'),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: const Color(0xFF1B3A60),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton(text: 'Consult Online', backgroundColor: Color(0xffFCC139), textColor: Color(0xff1B3A60), onPressed: (){}),
                    CustomTextButton(text: 'Register Your Co.', backgroundColor: Color(0xff1B3A60), textColor: Colors.white, onPressed: (){Get.to(Nature());})
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0xff1B3A60),
              height: 550,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Why Choose Us',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                  Container(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Imagewithtext(text: "Affordable & Transparent \nPricing", img: 'asset/Industry.png'),
                        Imagewithtext(text: "On-Time Delivery", img: 'asset/Timer.png'),
                        Imagewithtext(text: "100% Confidentiality", img: 'asset/Document.png'),
                        Imagewithtext(text: "Live Status", img: 'asset/Industry.png'),
                        Imagewithtext(text: "Client - Centric", img: 'asset/Industry.png'),
                        Imagewithtext(text: "Support & Satisfaction \nGuaranteed", img: 'asset/Industry.png'),

                      ],

                    ),
                  )
                ],
              ),

            ),
            SizedBox(height: 20,),
            Container(

              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Clients',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                  ClientsCarousel()
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Text('FAQ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
          Container(
            height: 100,
            color: Color(0xff1B3A60),
          )



          ],
        ),
      ),
    );
  }
}
