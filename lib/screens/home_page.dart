import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      extendBodyBehindAppBar: false,
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(0xff320C68),
                  Color(0xff581845),
                ])),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/girl.jpg')),
                          color: Colors.red,
                          shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text("Name",style: TextStyle(color: Colors.white,fontSize: 20),),
                        subtitle: Text("MCA",style: TextStyle(color: Colors.white,fontSize: 20),),
                        trailing: Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  )),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.email,color: Colors.white,)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1400/15000",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/newstar.jpg',
                              ))),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Container(
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.cyan, Colors.white, Colors.white])),
                )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      // gradient: LinearGradient(
                      //     begin: Alignment.topLeft,
                      //     end: Alignment.bottomRight,
                      //     colors: [
                      //       Color(0xff320C68),
                      //      Colors.blueGrey
                      //     ]),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 0.5)),
                  height: 90,
                  child: Center(
                    child: ListTile(
                      isThreeLine: false,
                      contentPadding: EdgeInsets.zero,
                      title: Text("Helo",style: TextStyle(color: Colors.white,fontSize: 20),),
                      subtitle: Text("helo /n shibla",style: TextStyle(color: Colors.white,fontSize: 20),),
                      trailing: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircularStepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 74,
                          stepSize: 5,
                          selectedColor: Colors.greenAccent,
                          unselectedColor: Colors.grey[200],
                          padding: 0,
                          width: 60,

                          selectedStepSize: 5,
                          // roundedCap: (_, __) => true,
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 35,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "its a demo",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Colors.white, width: 0.5)),
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "1000",
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.ac_unit_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  ("Water"),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "53,52",
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.stadium,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  ("Drinking demo"),
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff320C68),
                              Color(0xff581845),
                            ]),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 0.5)),
                    height: 120,
                  ),
                  Positioned(
                      right: 6,
                      bottom: -100,
                      child: Container(
                        height: 300,
                        width: 100,
                        child: Image.asset("assets/images/mobile.jpg"),
                      )),
                  Positioned(
                      bottom: 60,
                      left: 15,
                      child: Column(
                        children: [
                          Text(
                            "Dart language",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      )),
                  Positioned(
                      bottom: 40,
                      left: 15,
                      child: Column(
                        children: [
                          Text(
                            "Dart language",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ))
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ("Flutter"),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ), Text(
                      ("components"),
                      style: TextStyle(fontSize: 30, color: Colors.purple),
                    ),

                  ],
                )
              ],
            )),
      ),
    );
  }
}
