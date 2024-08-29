import 'package:flutter/material.dart';

import 'constants/constants.dart';

class ActionsSection extends StatefulWidget {
  const ActionsSection({super.key});

  @override
  State<ActionsSection> createState() => _ActionsSectionState();
}

class _ActionsSectionState extends State<ActionsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Actions',
            style: TextStyle(
                color: ColorsApp.black,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 180,
                  padding: EdgeInsets.all(5),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 30,
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: ColorsApp.pink,
                              borderRadius: BorderRadius.circular(40)),
                        ),
                      ),
                      Positioned(
                          bottom: 20,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Receive',
                                style: TextStyle(
                                    color: ColorsApp.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset("assets/arrow_icon.png")
                            ],
                          )),
                      Positioned(
                        right: 0,
                        top: 5,
                        child: Image.asset("assets/hands.png"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 180,
                  padding: EdgeInsets.all(5),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 30,
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: ColorsApp.mediumPurple,
                              borderRadius: BorderRadius.circular(40)),
                        ),
                      ),
                      Positioned(
                          bottom: 20,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Send',
                                style: TextStyle(
                                    color: ColorsApp.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset("assets/arrow_icon.png")
                            ],
                          )),
                      Positioned(
                        right: 0,
                        top: 5,
                        child: Image.asset("assets/pocket.png"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 180,
                  padding: EdgeInsets.all(5),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 30,
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: ColorsApp.whiteLight,
                              borderRadius: BorderRadius.circular(40)),
                        ),
                      ),
                      Positioned(
                          bottom: 20,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Swap',
                                style: TextStyle(
                                    color: ColorsApp.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset("assets/arrow_icon.png")
                            ],
                          )),
                      Positioned(
                        right: 0,
                        top: 5,
                        child: Image.asset("assets/image-2.png"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
