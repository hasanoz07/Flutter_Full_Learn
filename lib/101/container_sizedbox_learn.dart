import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Column(//Body içersine bir tane widget gireriz
        children: [
          SizedBox(//Sizedbox container yapısısının biraz daha az gelişmişi olarak tanımlanır
            width: 200,
            height: 200,
            child: Text("a" * 5000),
          ),
          SizedBox.shrink(),//Boş bir sizedbox oluştururuz
          SizedBox.square(//kare bir tane sized box oluştururuz
            dimension: 50,// boyutunu belirleriz
            child: Text("b" * 50),
          ),
          Container(//Container yapımız burada
            constraints: const BoxConstraints(maxHeight: 150, maxWidth: 50),//constraints ile ne kadar genişleme ve küçülme payları olduğu belirtilir
            child: Text("a" * 1),
            padding: const EdgeInsets.all(10),//Padding iç çerçeve diyebiliriz
            margin: const EdgeInsets.all(10),//Margin dış çerçeve diyebiliriz
            decoration: BoxDecoration(//decoration ile BoxDecoration öğresini kullanarak görünüşlerini ayarlayabilirz.
              gradient: LinearGradient(colors: [Colors.red,Colors.black]),//Gradient bir yönden bir yöne 2 veya daha fazla renk geçiş olayını düzenlmemize sağlar
              shape: BoxShape.circle,//Shape ile görüntünün yuvarlak yada diktörgen olmasını sağlayabilirz
              color: Colors.red,
              boxShadow: [
                BoxShadow(//Gölgelendirme efekti veriririz
                  color: Colors.green,
                  offset: Offset(0.1, 1),
                  blurRadius: 15,//Gölgelendirmenin ne kadar gözükmesi istediğimizi gösteririrz
                ),
                
              ],
              border: Border.all(//Bir dış çerçeve ekleriz
                width: 10,
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Burada ise dekorasyonu tekrarlamak yerine statik olarak her yerde kullanbiliriz
class ProjectUtility{
  static BoxDecoration boxDecoration=BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red,Colors.black]),
              shape: BoxShape.circle,
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  offset: Offset(0.1, 1),
                  blurRadius: 15,
                ),
                
              ],
              border: Border.all(
                width: 10,
                color: Colors.amber,
              ),
            );
}
//Bu dart dosyası dışında da bu drkorasyonu kullanmamıza imkan tanır
class ProjectContainerDecoration extends BoxDecoration{
  ProjectContainerDecoration():super(
              gradient: LinearGradient(colors: [Colors.red,Colors.black]),
              shape: BoxShape.circle,
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  offset: Offset(0.1, 1),
                  blurRadius: 15,
                ),
              ],
              border: Border.all(
                width: 10,
                color: Colors.amber,
              ),
            );

}
