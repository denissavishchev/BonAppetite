import 'package:flutter/material.dart';

class Plate extends StatelessWidget {
  int itemcount;
  String name;
  String autor;
  String image;
  int index;

  Plate({Key? key,
    required this.itemcount,
    required this.name,
    required this.autor,
    required this.image,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemcount,
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
                          'assets/images/' + image[index]
                      ),
                      fit: BoxFit.fitWidth
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(name[index], style: TextStyle(color: Colors.white), ),
                  ),
                  Column(
                    children: [
                      Text(autor[index], style: TextStyle(color: Colors.black),),
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
    );
  }
}

// Container(
// width: size,
// height: size,
// decoration: BoxDecoration(
// border: Border.all(
// color: borderColor,
// width: 1.0,
// ),
// borderRadius: BorderRadius.circular(15),
// color: backgroundColor,
// ),
// child: isIcon == false
// ? Center(child: Text(text!, style: TextStyle(color: color)))
// :Center(child: Icon(icon, color: color,)),
// );