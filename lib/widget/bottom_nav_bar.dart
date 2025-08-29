import 'package:exercise_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget{
  const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
   return Container(
     padding: const EdgeInsets.all(20),
     height: 80,
     color: Colors.white,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
          BottomNavItem(
            title: "Today",
            svgScr: 'assets/icons/calendar.svg',
          ),
         BottomNavItem(
           title: "All Exercise",
           svgScr: 'assets/icons/Excrecises.svg',
           isActive: true,
         ),
         BottomNavItem(
           title: "Setting",
           svgScr: 'assets/icons/Settings.svg',
         ),
       ],
     ),
   );
  }
}

class BottomNavItem extends StatelessWidget{
  final String? svgScr;
  final String? title;
  final Function? press;
  final bool? isActive;
  const BottomNavItem({
    Key? key,
    this.svgScr,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            svgScr!,
            color: isActive! ? kActiveIconColor : kTextColor,
          ),
          Text(
            title!,
            style: TextStyle(color: isActive! ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }

}