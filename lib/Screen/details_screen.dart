import 'package:exercise_app/constants.dart';
import 'package:exercise_app/widget/bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text("Meditation",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800),),
                    SizedBox(height: 10,),
                    Text("3-10 MIN Course",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    SizedBox(height: 8,),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(49.5),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            icon: SvgPicture.asset("assets/icons/search.svg"),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}