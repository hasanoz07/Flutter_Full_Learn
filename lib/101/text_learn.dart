import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = "veli";
  final ProjectKeys keys=ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//column içindekş ifedeleri dikeyde ortalar
          children: [
            Text(
              "Hello $name",
              maxLines: 2,//Textin en fazla kaç satır olması istediğini veririz
              textAlign: TextAlign.left,//Textin nereden başlaması yada texti nereye dayamak istediğimizi beliritiriz
              style: ProjectStyles.welcomeStyle,//Text için stil veririz (bu kısımda text için verdiğimiz stili 
              //dry prensibi ile bir yerde verip birçok text içinde kullandık)
            ),
            Text(
              "Welcome $name",
              maxLines: 2,
              textAlign: TextAlign.left,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              keys.welcome,
              maxLines: 2,
              textAlign: TextAlign.left,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              "Oldumu $name",
              maxLines: 2,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.welcomeColor)//
              //Flutter'ın bize sunduğu hazır theme of context içindeki text styleLari gösterir
            ),
          ],
        ),
      ),
    );
  }
}
//Bu kısımda textimiz için birden çok text içerisinde kullanabileceğimiz bir style oluşturduk
class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,//harfler arası boşluk
      decoration: TextDecoration.underline,//Textimizin altını çizer
      fontStyle: FontStyle.italic,//Textimizin fontunu italik yapar
      letterSpacing: 2,//Kelimeler arası boşluğu ayarlar
      fontSize: 16,//Text boyutunu ayarlar
      color: Colors.amber,//Text rengini ayarlar
      fontWeight: FontWeight.w600);//Text kalınlığını ayarlar
}
class ProjectColors {
  static Color welcomeColor = Colors.red;//Text rengi için satatik bir class oluşturur
      
}

class ProjectKeys{
  final String welcome ="Merhaba";//Text datası için final bir class oluşturur
}
