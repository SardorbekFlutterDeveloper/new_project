import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/core/constants/constatns.dart';
import 'package:new_project/core/constants/textformfield.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // margin: const EdgeInsets.only(top: 44),
              padding: const EdgeInsets.only(
                left: 20,
                top: 44,
              ),
              child: const Text(
                " Qanday darslar sizni qiziqtiradi?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 30, right: 180),
              child: const Text(
                "28 xil yo`nalishda darsliklar mavjud",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22),
              decoration: BoxDecoration(
                color: ColorConst.iconColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Izlash",
                    suffixIcon: Icon(
                      Icons.search,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                icons("laptop.svg", "Dasturlash",
                    mycolor: ColorConst.iconColor),
                icons("icon2.svg", "Dizayn",
                    mycolor: ColorConst.iconselectedbackcolor),
                icons("icon3.svg", "Smm", mycolor: ColorConst.iconColor),
                icons("icon4.svg", "Til kurslari",
                    mycolor: ColorConst.iconColor)
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 21, right: 196),
              child: const Text(
                "Dizaynga oid kurslar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  mycontainer("image11.jpg", "12 ta darslik", "UX/UI darslik"),
                  SizedBox(
                    height: 15,
                  ),
                  mycontainer("image12.jpg", "9 ta darslik", "Moushn dizayn")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container mycontainer(String rasm, String text1, String text2) {
    return Container(
      height: 250,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: ColorConst.iconColor),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 149,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/$rasm",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 15,
                    left: 20,
                    child: Opacity(
                      opacity: 0.6,
                      child: Chip(label:  Text(text1),)
                    )),
              ],
            ),
            Text(
              text2,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const Text(
              "Boshlang`ich darajadagilar uchun",
              style: TextStyle(fontSize: 20),
            ),
            SvgPicture.asset(
              "assets/icons/97.svg",
              color: ColorConst.iconselectedbackcolor,
            ),
          ],
        ),
      ),
    );
  }

  Column icons(String icons, String text, {Color? mycolor}) {
    return Column(
      children: [
        Container(
          height: 71,
          width: 72,
          decoration: BoxDecoration(
            color: mycolor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SvgPicture.asset(
            "assets/icons/$icons",
            height: 30,
            fit: BoxFit.scaleDown,
          ),
        ),
        Text(text),
      ],
    );
  }
}
