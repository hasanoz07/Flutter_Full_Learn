import 'package:flutter/material.dart';

import 'container_sizedbox_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(//Scafold prjenin iskelet yapısını olutrur
      backgroundColor: Colors.red,//Arka plan rengimizi belirler
      appBar: AppBar(),//Appbarımızı oluştururuz
      body: Center(child: Text("Merhaba")),
      floatingActionButton: FloatingActionButton(//Altta olan float butonu oluşturur 
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//float butonun konumunu belirler
      drawer: const Drawer(),//yandan açılır çekmece gibi olan kutumuzu açar
      bottomSheet: const Text("data"),//en alt köşede istenilen widgeti ekleyebileceğimiz bir alan açar
      bottomNavigationBar: Container(
        height: 85,
        decoration:ProjectContainerDecoration() ,
        child: BottomNavigationBar(//en altta bulunan proje içinde yönlendirme yapan butonları oluşturur
          items: const [
            BottomNavigationBarItem(//bu butonların elemanlarını oluşturur
                icon: Icon(
                  (Icons.abc_outlined),
                ),
                label: "Deneem"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Bbbbb")
          ],
        ),
      ),
    );
  }
}
