import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //* ***Butonlar için genel olarak söylencekler butonların onPressed özelliğine butonun işlevi yazılır 
          //ve diğer ifadeler ile de buton ile ilgili bilgilendirme yapılır Style kullanımında iki tip kullanım vardır */
          TextButton(
            onPressed: () {},
            child: Text(
              "Save",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            style:
                ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.red;
              },
            )),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Deneme"),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.add_comment_rounded)),
          FloatingActionButton(
            onPressed: () {
              //Butona tıklayınca gerçeleşecek olaylar yazılır
            },
            child: Icon(Icons.dangerous),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {},
            child: SizedBox(
              child: Text("Denek"),
              width: 100,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text("Inkwell ile Tıkla"),
          ),
          Container(
            color: Colors.white,
            height: 200,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                right: 40,
                left: 40,
              ),
              child: Text(
                "data",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(70),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
