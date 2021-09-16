import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player_app/video_info.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("json/info.json")
        .then((value) => info = json.decode(value));
  }

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: color.AppColor.homePageBackground,
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Training",
                    style: TextStyle(
                        fontSize: 30,
                        color: color.AppColor.homePageTitle,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: color.AppColor.homePageIcons,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                    color: color.AppColor.homePageIcons,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: color.AppColor.homePageIcons,
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Training",
                    style: TextStyle(
                        fontSize: 20,
                        color: color.AppColor.homePageSubtitle,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 20,
                        color: color.AppColor.homePageDetail,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => VideoInfo());
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: color.AppColor.homePageIcons,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 220,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      color.AppColor.gradientFirst,
                      color.AppColor.gradientSecond
                    ]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(80),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(5, 10),
                          blurRadius: 20,
                          color: color.AppColor.gradientSecond.withOpacity(0.2))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Workout",
                      style: TextStyle(
                          fontSize: 16,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "and Gluter Workout",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: color
                                      .AppColor.homePageContainerTextSmall),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.play_circle_fill,
                          size: 60,
                          color: color.AppColor.homePageContainerTextSmall,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 30),
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 40,
                                offset: Offset(8, 10),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.3)),
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(-1, -5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.3))
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/card.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(
                            right: 200, bottom: 30, top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/figure.png"),
                                fit: BoxFit.fill))),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      margin: const EdgeInsets.only(left: 150, top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You are doing greate",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: color.AppColor.homePageDetail),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Keep it up",
                            style: TextStyle(
                                fontSize: 15,
                                color: color.AppColor.homePagePlanColor),
                          ),
                          Text(
                            "Stick to your plan",
                            style: TextStyle(
                                fontSize: 15,
                                color: color.AppColor.homePagePlanColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Area of focus",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: color.AppColor.homePageTitle),
                  )
                ],
              ),
              Container(
                  height: 300,
                  child: GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 2,
                    // Generate 100 widgets that display their index in the List.
                    children: List.generate(4, (index) {
                      return Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Image(image: AssetImage("assets/ex3.png")),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Exercise 1",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: color.AppColor.homePageDetail,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ))
            ],
          ),
        )));
  }
}
