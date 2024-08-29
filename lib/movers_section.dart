import 'package:flutter/material.dart';

import 'constants/constants.dart';

class MoversSection extends StatefulWidget {
  const MoversSection({super.key});

  @override
  State<MoversSection> createState() => _MoversSectionState();
}

class _MoversSectionState extends State<MoversSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Text(
              'Top Movers',
              style: TextStyle(
                  color: ColorsApp.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 170,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorsApp.lightGrey
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("+34.98%",
                              style: TextStyle(
                                  color: ColorsApp.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                          Text("BTC \$21.58",
                              style: TextStyle(
                                  color: ColorsApp.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset("assets/purple_graph.png")
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 100,
                  width: 170,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorsApp.lightGrey
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("+34.98%",
                                  style: TextStyle(
                                      color: ColorsApp.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              Text("BTC \$21.58",
                                  style: TextStyle(
                                      color: ColorsApp.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset("assets/pink_graph.png")
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 100,
                  width: 170,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorsApp.lightGrey
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("+34.98%",
                                  style: TextStyle(
                                      color: ColorsApp.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              Text("BTC \$21.58",
                                  style: TextStyle(
                                      color: ColorsApp.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset("assets/purple_graph.png")
                      )
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
