
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';



class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  ButtonsState createState() => ButtonsState();
}

class ButtonsState extends State<Buttons> {

  NeumorphicStyle style = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: const NeumorphicBoxShape.circle(),
      shadowDarkColor: const Color(0xff000d39).withOpacity(0.8),
      shadowLightColor: const Color(0xff000d39).withOpacity(0.8),
      lightSource: LightSource.bottom,
      color: Colors.white10,
  );

  @override

  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NeumorphicButton(
              onPressed: () {
                print('Click');
              },
              style: style,
              padding: const EdgeInsets.all(2),
              child: const Icon(
                Icons.home_outlined,
                size: 50,
                color: Color(0xff000d39),
              ),
            ),

            NeumorphicButton(
              onPressed: () {
                print('Click');
              },
              style: style,
              padding: const EdgeInsets.all(2),
              child: const Icon(
                Icons.fingerprint,
                size: 50,
                color: Color(0xff000d39),
              ),
            ),

            NeumorphicButton(
              onPressed: () {
                print('Click');
              },
              style: style,
              padding: const EdgeInsets.all(2),
              child: const Icon(
                Icons.find_in_page,
                size: 50,
                color: Color(0xff000d39),
              ),
            ),

            NeumorphicButton(
              onPressed: () {
                print('Click');
              },
              style: style,
              padding: const EdgeInsets.all(2),
              child: const Icon(
                Icons.person,
                size: 50,
                color: Color(0xff000d39),
              ),
            ),
          ],
        ));
  }
}


