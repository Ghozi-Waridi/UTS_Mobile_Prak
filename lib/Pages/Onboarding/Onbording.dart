import 'package:flutter/material.dart';
import 'package:project_uts/Pages/Onboarding/Widgets/TextOndoarding.dart';
import '../../Color.dart' as CL;

class OnbordingPage extends StatelessWidget {
  const OnbordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: CL.colo_BG,
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.scaleDown,
              image: AssetImage(
                "Assets/Images/Doctor1.png",
              ),
            )),
            child: Text(
              "Text",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height / 3.5,
              width: width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: CL.colo_BG.withOpacity(0.5),
                    spreadRadius: 20,
                    blurRadius: 10
                  )
                ],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                color: Colors.white,
                // borderRadius: BorderRadius.only(topLeft: 20, topRight: 20),
              ),

              child: TextOnboarding(),
            ),
          )
        ],
      ),
    );
  }
}
