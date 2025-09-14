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
                        margin: const EdgeInsets.symmetric(vertical: 15),
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
                    ),
                    SizedBox(height: 20,),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        SeassionCard(
                          seassionNo: 1,
                          isDone: true,
                          press: () {},
                        ),
                        SeassionCard(
                          seassionNo: 2,
                          press: () {},
                        ),
                        SeassionCard(
                          seassionNo: 3,
                          press: () {},
                        ),
                        SeassionCard(
                          seassionNo: 4,
                          press: () {},
                        ),
                        SeassionCard(
                          seassionNo: 5,
                          press: () {},
                        ),
                        SeassionCard(
                          seassionNo: 6,
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Meditation',
                       style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical:10),
                      padding: const EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor
                          ),
                        ]
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/Meditation_women_small.svg'),
                          SizedBox(width: 15,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Basics 2',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Start your deepen you practise'
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
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

class SeassionCard extends StatelessWidget{
  final int? seassionNo;
  final bool? isDone;
  final Function? press;
  const SeassionCard({
    Key? key,
    this.seassionNo,
    this.isDone = false,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint){
      return ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Container(
          width: constraint.maxWidth/2 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone! ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor)
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone! ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "Season $seassionNo",
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

}