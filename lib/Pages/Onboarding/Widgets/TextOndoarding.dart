import 'package:flutter/material.dart';
import 'package:project_uts/Pages/GlobalWidgets/Buttom.dart';
import 'package:project_uts/Pages/Home.dart';
import '../../../Color.dart' as CL;

class TextOnboarding extends StatelessWidget {
  const TextOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "More Comfortable Chat With the Doctor",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            Text(
              "Book an appointment with doctor. Chat with doctor via appointment letter and get consultationt.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20,),
            Buttom_Custom(
              nameBtn: "Get Started",
              widthBtn: 350,
              sizeFontTextBtn: 20,
              colorTextBtn: Colors.white,
              paddingBtn: 10,
              heightBtn: 50,
              borderRadiusBtn: 15,
              linkBtn: HomePage(),
              colorBtn: CL.color_btn,
            )
          ],
        ),
      ),
    );
  }
}
