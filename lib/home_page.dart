import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
// import 'package:bon_appetite/plate_widget.dart';
import 'package:flutter/material.dart';
import 'package:bon_appetite/bottom_buttons.dart';
import 'package:bon_appetite/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  int _selectedTab = 0;

  DateTime _dateTime = DateTime.now();

  static String disheName = '';
  static String disheAutor = '';
  static String disheImage = '';

  void meat(String namesMeat, String autorMeat, String imageMeat) {
    setState(() {
      Navigator.of(context).pushNamed('/dishes_widget');
      disheName = namesMeat;
      disheAutor = autorMeat;
      disheImage = imageMeat;
    });
  }

  void soups(String namesSoups, String autorSoups, String imageSoups) {
    setState(() {
      Navigator.of(context).pushNamed('/dishes_widget');
      disheName = namesSoups;
      disheAutor = autorSoups;
      disheImage = imageSoups;
    });
  }

  void salads(String namesSalads, String autorSalads, String imagesSalads) {
    setState(() {
      Navigator.of(context).pushNamed('/dishes_widget');
      disheName = namesSalads;
      disheAutor = autorSalads;
      disheImage = imagesSalads;
    });
  }

  void desserts(String namesDesserts, String autorDesserts, String imagesDesserts) {
    setState(() {
      Navigator.of(context).pushNamed('/dishes_widget');
      disheName = namesDesserts;
      disheAutor = autorDesserts;
      disheImage = imagesDesserts;
    });
  }

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
                      return InkWell(
                        onTap: () {
                          meat(namesMeat[index], autorMeat[index], imagesMeat[index]);
                        },
                        child: Container(
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
                        ),
                      );
                    }),
                PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagesSoups.length,
                    itemBuilder: (_, index){
                      return InkWell(
                        onTap: () {
                          soups(namesSoups[index], autorSoups[index], imagesSoups[index]);
                        },
                        child: Container(
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
                        ),
                      );
                    }),
                PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagesSalads.length,
                    itemBuilder: (_, index){
                      return InkWell(
                          onTap: () {
                            salads(namesSalads[index], autorSalads[index], imagesSalads[index]);
                          },
                        child: Container(
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
                        ),
                      );
                    }),
                PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagesDesserts.length,
                    itemBuilder: (_, index){
                      return InkWell(
                        onTap: () {
                          desserts(namesDesserts[index], autorDesserts[index], imagesDesserts[index]);
                        },
                        child: Container(
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