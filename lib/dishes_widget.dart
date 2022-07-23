import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:bon_appetite/home_page.dart';
import 'constants.dart';

class Dishes extends StatefulWidget {
  @override
  DishesState createState() => DishesState();
}

class DishesState extends State<Dishes> {
  NeumorphicStyle style = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: const NeumorphicBoxShape.circle(),
      shadowDarkColor: Colors.white10.withOpacity(0.8),
      shadowLightColor: Colors.white10.withOpacity(0.8),
      lightSource: LightSource.bottom,
      color: const Color(0xff000d39).withOpacity(0.2));

  final MyHomePage dishesNames = new MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff000d39),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 35,
                  )))
        ],
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 330,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: SweepGradient(
                    center: AlignmentDirectional(-1, 0),
                    startAngle: 3.1,
                    endAngle: 3.2,
                    colors: [
                      Colors.white70,
                      Color(0xff000d39),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        MyHomePageState.disheName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: NeumorphicButton(
                            onPressed: () {
                              print('Click');
                            },
                            style: style,
                            padding: const EdgeInsets.all(2),
                            child: const Icon(
                              Icons.share,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            image: AssetImage('assets/images/' + MyHomePageState.disheImage,),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: NeumorphicButton(
                            onPressed: () {
                              print('Click');
                            },
                            style: style,
                            padding: const EdgeInsets.all(2),
                            child: const Icon(
                              Icons.favorite,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          MyHomePageState.disheAutor,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Center(child: Text('Ingredients')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
