import 'package:flutter/material.dart';

class view extends StatefulWidget {
  const view({Key? key}) : super(key: key);

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [Icon(Icons.messenger_outline)],
        leading: Text(
          "instagram",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: Column(children: [
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                ],
              ),

            ],
          ),
        ),
    //    post(),
        Container(
          height: 700,
          child: ListView(scrollDirection: Axis.vertical, children: [
            Column(
              children: [
                post(),
                post(),
                post(),
                post(),
                post(),
                post(),
              ],
            ),

          ],
          ),
        )
      ]),
    );
  }

  Container Story() {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 10),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
              image: AssetImage("imgs/m.jpg"), fit: BoxFit.fill)),
    );
  }

  Container post() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10, top: 10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage("imgs/m.jpg"), fit: BoxFit.fill)),
              ),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("nabaa naz "),
                  Text("nabaa naz . audio "),
                ],
              ),
              SizedBox(
                width: 200,
              ),
              Icon(Icons.power_input),
            ],
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset("imgs/m.jpg"),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Icon(
                Icons.heart_broken,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.comment_bank,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.send,
                size: 30,
              ),
            ],
          ),
           Container(margin: EdgeInsets.only(left: 10,bottom: 6),
            child: Text(
                "nabaa naz : song let me down slowly ",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,)),
          ),

          Container(margin: EdgeInsets.only(left: 10),
            child: Text(
                "View all 50 comments",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,)),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
