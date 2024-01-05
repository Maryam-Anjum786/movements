import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class Movement extends StatelessWidget {
  Controller controller = Get.put(Controller());

  Movement({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            Container(
              width: width,
              height: height * 0.4,
              decoration: const BoxDecoration(
                color: Color(0xff688EBF),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(top: height * 0.08, left: width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.23,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.01),
                      child: Text(
                        "Movement",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.029,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height * 0.20,
              left: width * 0.03,
              right: width * 0.03,
              child: Container(
                width: width,
                height: height * 0.7,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => InkWell(
                                child: Container(
                                  width: width * 0.24,
                                  height: height * 0.045,
                                  decoration: BoxDecoration(
                                    color: controller.selectedButtonIndex.value
                                        ? const Color(0xff2B649F)
                                        : Colors.black,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Sort",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  controller.toggleVisibility();
                                },
                              ),
                            ),
                            Obx(
                              () => InkWell(
                                child: Container(
                                  width: width * 0.24,
                                  height: height * 0.045,
                                  decoration: BoxDecoration(
                                    color: controller.lengthButtonIndex.value
                                        ? const Color(0xff2B649F)
                                        : Colors.black,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Length",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  controller.isClicked();
                                },
                              ),
                            ),
                            InkWell(
                              child: Container(
                                width: width * 0.24,
                                height: height * 0.045,
                                decoration: const BoxDecoration(
                                  color: Color(0xff2B649F),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Filter",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Get.bottomSheet(Container(
                                  height: height * 0.8,
                                  width: width,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18),
                                      topRight: Radius.circular(18),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "The Balance of Exercises\nand Meditation",
                                        style: TextStyle(
                                            fontSize: height * 0.024,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      const Text(
                                        "Breath Awareness (10 Minutes)",
                                        textAlign: TextAlign.center,
                                      ),
                                      const Divider(
                                        indent: 30,
                                        endIndent: 30,
                                      ),
                                      const Text(
                                        "Mindfulness (10 Minutes)",
                                        textAlign: TextAlign.center,
                                      ),
                                      const Divider(
                                        indent: 30,
                                        endIndent: 30,
                                      ),
                                      const Text(
                                        "Zen Meditation (10 Minutes)",
                                        textAlign: TextAlign.center,
                                      ),
                                      const Divider(
                                        indent: 30,
                                        endIndent: 30,
                                      ),
                                      const Text(
                                        "Stretches (10 Minutes)",
                                        textAlign: TextAlign.center,
                                      ),
                                      const Divider(
                                        indent: 30,
                                        endIndent: 30,
                                      ),
                                      const Text(
                                        "Sit-Ups (10 Minutes)",
                                        textAlign: TextAlign.center,
                                      ),
                                      const Divider(
                                        indent: 30,
                                        endIndent: 30,
                                      ),
                                      const Text(
                                        "Squats (10 Minutes)",
                                        textAlign: TextAlign.center,
                                      ),
                                      const Divider(
                                        indent: 30,
                                        endIndent: 30,
                                      ),
                                    ],
                                  ),
                                ));
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.06, top: height * 0.02),
                        child: Text(
                          "Featured",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.022,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.3,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: width * 0.05, top: height * 0.01),
                                    child: Container(
                                      height: height * 0.18,
                                      width: width * 0.53,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://images.pexels.com/photos/3930990/pexels-photo-3930990.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: width * 0.05,
                                    ),
                                    child: Text(
                                      "Mindfulness",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.02,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: width * 0.05,
                                    ),
                                    child: Text(
                                      "Embrace Serenity: Meditation for\nMind, Body, and Soul.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.012,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                      const Divider(
                        thickness: 1.1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.05, top: height * 0.025),
                        child: Text(
                          "Afternoon Boost",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.3,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: width * 0.05, top: height * 0.01),
                                    child: Container(
                                      height: height * 0.18,
                                      width: width * 0.53,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://images.pexels.com/photos/2247179/pexels-photo-2247179.jpeg?auto=compress&cs=tinysrgb&w=400"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: width * 0.05,
                                    ),
                                    child: Text(
                                      "Mindfulness",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.02,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.05),
                                    child: Text(
                                      "Embrace Serenity: Meditation for\nMind, Body, and Soul.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.012,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                      const Divider(
                        thickness: 1.1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.05, top: height * 0.02),
                        child: Text(
                          "Tracks",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.5,
                        width: width,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.06,
                                    vertical: height * 0.01),
                                child: Container(
                                  width: width,
                                  height: height * 0.16,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffE1E8F2),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.029,
                                        vertical: height * 0.02),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: width * 0.3,
                                          height: height,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://images.pexels.com/photos/4056731/pexels-photo-4056731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13))),
                                        ),
                                        SizedBox(
                                          width: width * 0.035,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Meditation",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: height * 0.015,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  textAlign: TextAlign.start,
                                                ),
                                                SizedBox(
                                                  width: width * 0.2,
                                                ),
                                                Obx(
                                                  () => InkWell(
                                                    onTap: () {
                                                      controller
                                                          .toggleIcon(index);
                                                    },
                                                    child: Icon(
                                                      controller
                                                              .isFavorite[index]
                                                          ? Icons.favorite
                                                          : Icons
                                                              .favorite_outline,
                                                      color: const Color(
                                                          0xff2C629C),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Mindfulness",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: height * 0.018,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              "Lorem Ipsum is simply dummy text\nof the printing.",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: height * 0.011,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              "Duration: 10 mins",
                                              style: TextStyle(
                                                fontSize: height * 0.015,
                                              ),
                                              textAlign: TextAlign.start,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
