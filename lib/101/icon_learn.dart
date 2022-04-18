import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({Key? key}) : super(key: key);
final IconSizes iconSize=IconSizes();
final IconColors iconColors=IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Column(
        
        children: [
          SizedBox(height: 20,),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            
            onTap: (){},
            child: Container(
              width: 50,
              height: 50,
              child: Icon(
                Icons.message_outlined,
                color: Theme.of(context).backgroundColor,
                size: iconSize.iconSmall,
              ),
            ),
          ),
          SizedBox(width: 100,height: 40,),
          Icon(
            Icons.message_outlined,
            color: iconColors.emerald,
            size: iconSize.iconMedium,
          ),
          SizedBox(width: 100,height: 40,),
          Icon(
            Icons.message_outlined,
            color: iconColors.ultraViolet,
            size: iconSize.iconLarge,
          ),
        ],
      ),
    );
  }
}

class IconSizes{
  final double iconSmall=40;
  final double iconMedium=60;
  final double iconLarge=80;
}
class IconColors{
  final Color livingCoral=Color(0xffFF6F61);
  final Color ultraViolet=Color(0xff6B5B95);
  final Color emerald=Color(0xff009B77);
}