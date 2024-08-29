import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'actions_section.dart';
import 'amountCard.dart';
import 'constants/constants.dart';
import 'movers_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: ColorsApp.white,
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Nekori',
                  style: TextStyle(color: ColorsApp.pink, fontSize: 18),
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(color: ColorsApp.black, fontSize: 32),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorsApp.lightGrey),
              child: Image.asset('assets/icon_notifications.png'),
            )
          ],
        ),
        elevation: 0,
      ),
      body: Container(
        color: ColorsApp.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AmountCard(),
              ActionsSection(),
              MoversSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: ColorsApp.white,
        color: ColorsApp.darkPurple,
        buttonBackgroundColor: ColorsApp.darkPurple,
        items: [
          Image.asset("assets/home.png"),
          Image.asset("assets/wallet.png"),
          Container(child: const Text('')),
          Image.asset("assets/market.png"),
          Image.asset("assets/setting.png"),
        ],
        index: currentPageIndex,
        letIndexChange: (index) => true,
        onTap: (index) {
          currentPageIndex = index;
        },
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
            onPressed: () {
              setState(() {
                final CurvedNavigationBarState? navBarState = _bottomNavigationKey.currentState;
                navBarState?.setPage(2);
              });
            },
            child: Image.asset("assets/swap-fill.png"),
            backgroundColor: ColorsApp.mediumPurple,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
