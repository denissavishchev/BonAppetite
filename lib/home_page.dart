import 'dart:async';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
// import 'package:bon_appetite/plate_widget.dart';
import 'package:flutter/material.dart';
import 'package:bon_appetite/bottom_buttons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  DateTime _dateTime = DateTime.now();

  void InitState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_dateTime.second != DateTime.now().second) {
        setState(() {
          _dateTime = DateTime.now();
        });
      }
    });
  }


  List imagesMeat = ['meat1.png', 'meat2.png', 'meat3.png', 'meat4.png',];
  List imagesSoups = ['soup1.png', 'soup2.png', 'soup3.png', 'soup4.png',];
  List imagesSalads = ['salad1.png', 'salad2.png', 'salad3.png', 'salad4.png',];
  List imagesDesserts = ['dessert1.png', 'dessert2.png', 'dessert3.png', 'dessert4.png',];

  List namesMeat = ['Grilled Beaf Steak', 'Steak with Vegetables', 'Chicken with potatoes', 'Beaf with Asparagus'];
  List namesSoups = ['Forest Mushrooms', 'Vege', 'Summer Pasta', 'Chicken'];
  List namesSalads = ['Green', 'Morning Fresh', 'Hot Evening', 'Wake Up'];
  List namesDesserts = ['Red Line', 'Green Dew', 'Purple Moon', 'New York CheeseCake'];

  List autorMeat = ['John Smith (USA)', 'Sanjeev Kapoor (India)', 'Roberto Matro (Italy)', 'Fred Ostov (Brazil)'];
  List autorSoups = ['Anna Barto (Norway)', 'Katoshi Agawa (Japan)', 'John Smith (USA)', 'Peter Red (Canada)'];
  List autorSalads = ['Krim so Hug (Korea)', 'Gerar Gun(France)', 'Anna Barto (Norway)', 'Augusto Beer (Spain)'];
  List autorDesserts = ['Julie Smolikova (France)', 'Otto Moon (Germany)', 'Roberto Matro (Italy)', 'Oliver Seeman (UK)'];

  NeumorphicStyle style = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: const NeumorphicBoxShape.circle(),
      shadowDarkColor: Colors.red.withOpacity(0.8),
      shadowLightColor: Colors.red.withOpacity(0.8),
      lightSource: LightSource.bottom,
      color: const Color(0xff000d39).withOpacity(0.2)
  );

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            color: const Color(0xff000d39),
            padding: const EdgeInsets.only(top: 35, left: 20, bottom: 5),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, size: 30, color: Colors.white,),
                onPressed: (){},),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.1)
                  ),
                  child: NeumorphicButton(
                    onPressed: () {
                      print('Click');
                    },
                    style: style,
                    padding: const EdgeInsets.all(2),
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.red.withOpacity(0.6),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.maxFinite,
            color: const Color(0xff000d39),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 2,),
                  const Text('Today Dishes', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 25),),
                  const SizedBox(height: 5,),
                  Text(
                    DateFormat('EEEE, d MMMM yyyy').format(DateTime.now()),
                    style: const TextStyle(color: Colors.white60, fontWeight: FontWeight.bold, fontSize: 15
                    ),
                  ),
                ],
              ),
            ),
          ),
          ColoredBox(
            color: const Color(0xff000d39),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: const [
                Tab(text: 'Meat'),
                Tab(text: 'Soups'),
                Tab(text: 'Salads'),
                Tab(text: 'Desserts'),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 500,
            child: TabBarView(
              controller: _tabController,
              children: [
                PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagesMeat.length,
                    itemBuilder: (_, index){
                      return Container(
                        decoration: BoxDecoration(
                            gradient: const SweepGradient(
                              center: AlignmentDirectional(-1,0),
                              startAngle: 3.1,
                              endAngle: 3.2,
                              colors: [
                                Colors.white70,
                                Color(0xff000d39),
                              ],
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/' + imagesMeat[index]
                                ),
                                fit: BoxFit.fitWidth
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(namesMeat[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold, fontSize: 25),  ),
                            ),
                            Column(
                              children: [
                                Text(autorMeat[index], style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20),),
                                const SizedBox(height: 15,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                  List.generate(4, (indexDots) {
                                    return  Container(

                                      margin: const EdgeInsets.only(bottom: 15, right: 4),
                                      width: index == indexDots ? 25 : 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: index == indexDots ? const Color(0xff000d39).withOpacity(0.9) : const Color(0xff000d39).withOpacity(0.6)
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),

                          ],
                        ),
                      );
                    }),
                PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagesSoups.length,
                    itemBuilder: (_, index){
                      return Container(
                        decoration: BoxDecoration(
                            gradient: const SweepGradient(
                              center: AlignmentDirectional(-1,0),
                              startAngle: 3.1,
                              endAngle: 3.2,
                              colors: [
                                Colors.white70,
                                Color(0xff000d39),],
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/' + imagesSoups[index]
                                ),
                                fit: BoxFit.fitWidth
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(namesSoups[index], style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 25), ),
                            ),
                            Column(
                              children: [
                                Text(autorSoups[index], style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                                const SizedBox(height: 15,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                  List.generate(4, (indexDots) {
                                    return  Container(

                                      margin: const EdgeInsets.only(bottom: 15, right: 4),
                                      width: index == indexDots ? 25 : 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: index == indexDots ? const Color(0xff000d39).withOpacity(0.9) : const Color(0xff000d39).withOpacity(0.6)
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),

                          ],
                        ),
                      );
                    }),
                PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagesSalads.length,
                    itemBuilder: (_, index){
                      return Container(
                        decoration: BoxDecoration(
                            gradient: const SweepGradient(
                              center: AlignmentDirectional(-1,0),
                              startAngle: 3.1,
                              endAngle: 3.2,
                              colors: [
                                Colors.white70,
                                Color(0xff000d39),],
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/' + imagesSalads[index]
                                ),
                                fit: BoxFit.fitWidth
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(namesSalads[index], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25), ),
                            ),
                            Column(
                              children: [
                                Text(autorSalads[index], style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                                const SizedBox(height: 15,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                  List.generate(4, (indexDots) {
                                    return  Container(

                                      margin: const EdgeInsets.only(bottom: 15, right: 4),
                                      width: index == indexDots ? 25 : 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: index == indexDots ? const Color(0xff000d39).withOpacity(0.9) : const Color(0xff000d39).withOpacity(0.6)
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),

                          ],
                        ),
                      );
                    }),
                PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagesDesserts.length,
                    itemBuilder: (_, index){
                      return Container(
                        decoration: BoxDecoration(
                            gradient: const SweepGradient(
                              center: AlignmentDirectional(-1,0),
                              startAngle: 3.1,
                              endAngle: 3.2,
                              colors: [
                                Colors.white70,
                                Color(0xff000d39),],
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/' + imagesDesserts[index]
                                ),
                                fit: BoxFit.fitWidth
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(namesDesserts[index], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25), ),
                            ),
                            Column(
                              children: [
                                Text(autorDesserts[index], style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                                const SizedBox(height: 15,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                  List.generate(4, (indexDots) {
                                    return  Container(

                                      margin: const EdgeInsets.only(bottom: 15, right: 4),
                                      width: index == indexDots ? 25 : 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: index == indexDots ? const Color(0xff000d39).withOpacity(0.9) : const Color(0xff000d39).withOpacity(0.6)
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),

                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
          Container(
            color: Colors.white70,
            width: double.maxFinite,
            height: 105,
            child: const Buttons(),
          ),
        ],
      ),
    );
  }
}
