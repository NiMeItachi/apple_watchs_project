import 'package:b28_nursultan_suleymanov_exam5/components/colors.dart';
import 'package:b28_nursultan_suleymanov_exam5/screens/watch1_screen.dart';
import 'package:b28_nursultan_suleymanov_exam5/screens/watch2_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static const String id = "main_page";
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.colorWhite,
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              //Left side
              Expanded(
                flex: 1,
                child: Container(
                  color: CustomColors.colorBlack,
                  child: Column(
                    children: [
                      //Logo
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          "assets/images/icons/logo.png",
                          scale: 0.8,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Text: Watches
                            RotatedBox(
                              quarterTurns: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Watches",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 2,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            // Text: Macbooks
                            const RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "Macbooks",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            // Text: iPhones
                            const RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "iPhones",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          "assets/images/icons/home.png",
                          scale: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Right side
              Expanded(
                flex: 3,
                child: Container(
                  color: CustomColors.colorWhite,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            //ICON: search
                            Container(
                              margin: const EdgeInsets.only(left: 200),
                              height: 100,
                              child: Image.asset(
                                "assets/images/icons/search.png",
                                scale: 0.9,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 100),
                              height: 75,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Apple",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontFamily: "Poppins"),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    "Watches",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        height: 1.2),
                                  ),
                                ],
                              ),),
                            //Watch  № 1
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, Watch1Page.id);
                              },
                              child: Container(
                                color: CustomColors.colorWhite,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/watches/watch_1.png",
                                      scale: 1.1,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 30),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Series 3",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.start,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "The Apple watch series 3 is designed for people who want to keep their fitness game on point.",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                height: 1.2),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                "\$295.00",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w600),
                                                textAlign: TextAlign.start,
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(left: 20),
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                        offset: Offset(0, 1),
                                                        blurRadius: 0.2,
                                                        color: Colors.grey),
                                                  ],
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  "+",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            //Watch  № 2
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, Watch2Page.id);
                              },
                              child: Container(
                                color: CustomColors.colorWhite,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/watches/watch_2.png",
                                      scale: 0.8,
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 30),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Series 5",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.start,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "The Apple watch series 3 is designed for people who want to keep their fitness game on point.",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                height: 1.2),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                "\$295.00",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w600),
                                                textAlign: TextAlign.start,
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(left: 20),
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                        offset: Offset(0, 1),
                                                        blurRadius: 0.2,
                                                        color: Colors.grey),
                                                  ],
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  "+",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
