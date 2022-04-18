import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = "Welcome Learn";//İfadelerin bu şekilde bir değişken içinde tanımlanmış olmasına dikkat edilmelidir.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(31, 122, 110, 110),
      appBar: AppBar(
        title: Text(_title),
        systemOverlayStyle: SystemUiOverlayStyle.light,//Appbar ile örtüşen sistem uygulamalarının kaplamalarında kullanılıcak stili belirler
        leadingWidth: 23,//Baştaki widgetin genişliğini tanımlar
        toolbarTextStyle: TextStyle(color: Colors.red),//Leading ve Actionsdaki widgetlerin stilini belirler
        //actionsIconTheme: IconThemeData(color: Colors.red),
        
        leading: Icon(Icons.back_hand,size: 30,),//Baştaki Widget ile ilgili işlemler burada
        
        actions: [//Sondaki widget ile ilgili işlemler
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu,size: 30,),
          ),
          Center(
            child: const CircularProgressIndicator(color: Colors.white,),//Yükleniyor olarak dönen ifadeyi belirtir
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
