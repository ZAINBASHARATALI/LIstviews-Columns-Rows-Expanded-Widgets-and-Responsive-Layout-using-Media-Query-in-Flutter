import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Expanded(
          child: MyContainer(
            myheight: h / 10,
            mycolor: Colors.green,
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              flex: 1,
              child: MyContainer(
                mycolor: Colors.blue,
                myheight: h / 10,
              ),
            ),
            Expanded(
              flex: 3,
              child: MyContainer(
                myheight: h / 10,
                mycolor: Colors.red,
              ),
            ),
          ]),
        ),
        Expanded(
            flex: 5,
            child: MyContainer(
              mycolor: Colors.purple,
              myheight: h / 3,
            )),
        Expanded(
            flex: 1,
            child: MyContainer(
              mycolor: Colors.blue,
              myheight: h / 10,
            )),
        Expanded(
            flex: 5,
            child: MyContainer(
              mycolor: Colors.purple,
              myheight: h / 4,
            )),
        Row(
          children: [
            Expanded(
                child: MyContainer(
              mycolor: Colors.green,
              myheight: h / 5,
              mywidth: w / 2,
            )),
            Expanded(
              child: Column(
                children: [
                  MyContainer(
                    mycolor: Colors.blue,
                    myheight: h / 18,
                    mywidth: w / 2,
                  ),
                  MyContainer(
                    mycolor: Colors.red,
                    myheight: h /7.5,
                    mywidth: w / 2,
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: MyContainer(
            mycolor: Colors.green,
            mywidth: w,
            myheight: h / 7,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MyContainer(
                  mycolor: Colors.green,
                  myheight: h / 2,
                  mywidth: w / 2,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    MyContainer(
                      mycolor: Colors.blue,
                      myheight: h / 10,
                      mywidth: w / 2,
                    ),
                    MyContainer(
                      mycolor: Colors.red,
                      myheight: h / 2.55,
                      mywidth: w / 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: MyContainer(
            mycolor: Colors.purple,
            myheight: h / 5,
            mywidth: w,
          ),
        ),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer(
      {Key? key, required this.mycolor, this.myheight, this.mywidth})
      : super(key: key);
  final mycolor;
  final double? myheight;
  final double? mywidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: myheight,
          width: mywidth,
          decoration: BoxDecoration(
            color: mycolor,
            borderRadius: BorderRadius.circular(15),
          ),
        ));
  }
}
