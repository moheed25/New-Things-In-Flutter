import 'package:flutter/material.dart';
import 'package:things/gridview/model.dart';
import 'package:things/gridview/newpage.dart';
//import 'package:things/model.dart';
//import 'package:things/newpage.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List _gridlist = [
    ItemsModel(title: "Burger", image: "assets/burger.jpg"),
    ItemsModel(title: "Pizza", image: "assets/pizza.jpg"),
    ItemsModel(title: "Ice Cream", image: "assets/icecream.jpg"),
    ItemsModel(title: "Sandwish", image: "assets/sandwish.jpg"),
    ItemsModel(title: "Tikka", image: "assets/tikka.jpg"),
    ItemsModel(title: "Fish", image: "assets/fish.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
            height: 100,
            width: 500,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: _gridlist.length,
                itemBuilder: (context, index) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        child: Image.asset(
                          _gridlist[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => New(
                                    title: _gridlist[index].title,
                                    Image: _gridlist[index].image)),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "${_gridlist[index].title}",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                })),
      ],
    ));
  }
}
