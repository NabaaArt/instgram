import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [Icon(Icons.linear_scale)],
          leading: Icon(Icons.arrow_back),
        ),
        body: Column(children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 10, top: 10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage("imgs/m.jpg"), fit: BoxFit.fill)),
            ),
          ),
          Text(
            "nabaa naz ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text("Iraq - baghdad"),
          SizedBox(
            height: 10,
          ),
          Text(
            "I'm a programmer ,study in UOB,studing flutter with DNA ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message,
                color: Colors.indigo,
              ),
              Container(
                  height: 40,
                  width: 140,
                  margin: EdgeInsets.only(left: 60),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                  ),
                  child: Center(
                    child: Text(
                      "follow",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 60),
                  child: Icon(
                    Icons.share,
                    color: Colors.indigo,
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      "850",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "following",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0,
                width: 2,
                color: Colors.grey,
                margin: EdgeInsets.only(left: 40),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "120k",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      "followers",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 2,
                color: Colors.grey,
                margin: EdgeInsets.only(right: 40),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "345k",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      " Likes",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 10,
            width: 450,
            color: Colors.black12,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "followers",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 250,
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(children: [
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 10,
                width: 600,
                color: Colors.black12,
                margin: EdgeInsets.only(bottom: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 330),
                child: Text(
                  "posts",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      //  crossAxisAlignment: CrossAxisAlignment.end,
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        posts(),
                        posts(),
                        posts(),
                        posts(),
                        posts(),
                        posts(),
                        posts(),
                        posts(),
                        posts(),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]));
  }
}

Container Story() {
  return Container(
      child: Center(
    child: Column(
      //    crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                  image: AssetImage("imgs/m.jpg"), fit: BoxFit.fill)),
        ),
        Padding(
          padding: EdgeInsets.only(right: 7),
          child: Text(
            "nabaa",
            style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  ));
}

Container posts() {
  return Container(
      child: Center(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imgs/m.jpg"), fit: BoxFit.fill)),
        ),
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imgs/m.jpg"), fit: BoxFit.fill)),
        ),
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imgs/m.jpg"), fit: BoxFit.fill)),
        ),
      ],
    ),
  ));
}
