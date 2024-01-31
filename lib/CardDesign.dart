import 'package:CardDesign/utilClass.dart';
import 'package:flutter/material.dart';
import 'package:CardDesign/BuildData.dart';

class CardDesign extends StatefulWidget {
  const CardDesign({super.key});

  @override
  State<CardDesign> createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: Container(
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: ColorUtils.greyBlue),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    border: const Border(
                      bottom: BorderSide(
                        color: ColorUtils.greyBlue,
                        width: 0.7,
                      ),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        ColorUtils.greyBlue.withOpacity(0.75),
                        ColorUtils.greyBlue.withOpacity(0.36),
                        ColorUtils.greyBlue.withOpacity(0.10),
                        ColorUtils.greyBlue.withOpacity(0.10),
                        ColorUtils.greyBlue.withOpacity(0.36),
                        ColorUtils.greyBlue.withOpacity(0.75),
                      ],
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: Color(0xff424242),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringConst.sliver,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xff424242),
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            StringConst.description,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff424242),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            StringConst.price,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xff424242),
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ColoredList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
