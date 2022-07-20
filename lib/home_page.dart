import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  List imagesMeat = ['meat.png', 'meat.png', 'meat.png', 'meat.png',];
  List imagesSoups = ['soup.png', 'soup.png', 'soup.png', 'soup.png',];
  List imagesSalads = ['salad.png', 'salad.png', 'salad.png', 'salad.png',];
  List imagesDesserts = ['dessert.png', 'dessert.png', 'dessert.png', 'dessert.png',];

  List namesMeat = ['meat1', 'meat2', 'meat3', 'meat4'];
  List namesSoups = ['soup1', 'soup2', 'soup3', 'soup4'];
  List namesSalads = ['salad1', 'salad2', 'salad3', 'salad4'];
  List namesDesserts = ['dessert1', 'dessert2', 'dessert3', 'dessert4'];

  List autorMeat = ['meat1', 'meat2', 'meat3', 'meat4'];
  List autorSoups = ['soup1', 'soup2', 'soup3', 'soup4'];
  List autorSalads = ['salad1', 'salad2', 'salad3', 'salad4'];
  List autorDesserts = ['dessert1', 'dessert2', 'dessert3', 'dessert4'];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SizedBox(height: 100,),
          ColoredBox(
            color: Color(0xff000d39),
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
          Container(
            width: double.maxFinite,
            height: 500,
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: PageView.builder(
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
                                  Colors.white,
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
                                child: Text(namesMeat[index], style: TextStyle(color: Colors.white), ),
                              ),
                              Column(
                                children: [
                                  Text(autorMeat[index], style: TextStyle(color: Colors.black),),
                                  SizedBox(height: 15,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    List.generate(4, (indexDots) {
                                      return  Container(

                                        margin: EdgeInsets.only(bottom: 15, right: 4),
                                        width: index == indexDots ? 25 : 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: index == indexDots ? Color(0xff000d39).withOpacity(0.9) : Color(0xff000d39).withOpacity(0.6)
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
                ),
                Container(
                  child: PageView.builder(
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
                                  Colors.white,
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
                                child: Text(namesSoups[index], style: TextStyle(color: Colors.white), ),
                              ),
                              Column(
                                children: [
                                  Text(autorSoups[index], style: TextStyle(color: Colors.black),),
                                  SizedBox(height: 15,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    List.generate(4, (indexDots) {
                                      return  Container(

                                        margin: EdgeInsets.only(bottom: 15, right: 4),
                                        width: index == indexDots ? 25 : 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: index == indexDots ? Color(0xff000d39).withOpacity(0.9) : Color(0xff000d39).withOpacity(0.6)
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
                ),
                Container(
                  child: PageView.builder(
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
                                  Colors.white,
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
                                child: Text(namesSalads[index], style: TextStyle(color: Colors.white), ),
                              ),
                              Column(
                                children: [
                                  Text(autorSalads[index], style: TextStyle(color: Colors.black),),
                                  SizedBox(height: 15,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    List.generate(4, (indexDots) {
                                      return  Container(

                                        margin: EdgeInsets.only(bottom: 15, right: 4),
                                        width: index == indexDots ? 25 : 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: index == indexDots ? Color(0xff000d39).withOpacity(0.9) : Color(0xff000d39).withOpacity(0.6)
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
                ),
                Container(
                  child: PageView.builder(
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
                                  Colors.white,
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
                                child: Text(namesDesserts[index], style: TextStyle(color: Colors.white), ),
                              ),
                              Column(
                                children: [
                                  Text(autorDesserts[index], style: TextStyle(color: Colors.black),),
                                  SizedBox(height: 15,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    List.generate(4, (indexDots) {
                                      return  Container(

                                        margin: EdgeInsets.only(bottom: 15, right: 4),
                                        width: index == indexDots ? 25 : 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: index == indexDots ? Color(0xff000d39).withOpacity(0.9) : Color(0xff000d39).withOpacity(0.6)
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
