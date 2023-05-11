import 'package:b28_nursultan_suleymanov_exam5/components/colors.dart';
import 'package:b28_nursultan_suleymanov_exam5/screens/main_screen.dart';
import 'package:flutter/material.dart';

class Watch2Page extends StatefulWidget {
  static const String id = "watch2_page";

  const Watch2Page({Key? key}) : super(key: key);

  @override
  State<Watch2Page> createState() => _Watch2PageState();
}

class _Watch2PageState extends State<Watch2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.colorWhite,
      body: SafeArea(
        child: Column(
          children: [
            //Top bar
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Icon: Back
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, MainPage.id);
                    },
                    child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Image.asset("assets/images/icons/back.png")),
                  ),
                  //Icon: Favourite
                  Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/icons/favourite.png",
                          scale: 0.9,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 50),
            //Watch
            Container(
              color: CustomColors.colorWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/watches/watch_2.png",
                    scale: 0.7,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 8,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Series 5",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                          width: 260,
                          child: Text(
                            "The Apple watch series 3 is designed for people who want to keep their fitness game on point.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                height: 1.2),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              "\$295.00",
                              style: TextStyle(
                                  fontSize: 24,
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
                                    fontSize: 24, fontWeight: FontWeight.w600),
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
            const SizedBox(height: 20),
            //Button 1
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 50,
              color: Colors.black,
              child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "PROCEED TO BUY",
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  )),
            ),
            const SizedBox(height: 25),
            //Button 1
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2)
              ),
              child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  )),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
