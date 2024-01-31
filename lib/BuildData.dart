import 'package:CardDesign/utilClass.dart';
import 'package:flutter/material.dart';

class ColoredList extends StatelessWidget {
  final List<String> nameOfList = [
    "Free filter kit replacement worth ₹5,210",
    "2 Free maintenance services worth ₹1,060",
    "Unlimited service visits",
    "10% off on spare parts replacement",
  ];

  ColoredList({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: nameOfList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Row(
            children: [
              const Icon(Icons.check, color: ColorUtils.greyBlue, size: 20),
              const SizedBox(width: 10),
              Container(
                width: MediaQuery.of(context).size.width*0.72,
                decoration:  BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: index == nameOfList.length - 1 ? Colors.transparent : ColorUtils.greyBlue,
                      width: 0.7,
                    ),
                  ),
                ),
                  height:60,child: buildRichText(nameOfList[index])),
            ],
          ),
        );
      },
    );
  }

  Widget buildRichText(String text) {
    List<String> keywords = ["Free filter", "2 Free", "Unlimited", "10% off"];
    Color keywordColor =  ColorUtils.greyBlue;
    Color restOfTextPartColor = const Color(0xff424242);

    for (String keyword in keywords) {
      if (text.contains(keyword)) {
        return Row(
          children: [
            Text(
              keyword,
              style: TextStyle(color: keywordColor, fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 0.25),
            ),
            Text(
              text.replaceFirst(keyword, ''),
              style: TextStyle(color: restOfTextPartColor, fontSize: 12, letterSpacing: 0.25),
            ),
          ],
        );
      }
    }

    return Text(
      text,
      style: TextStyle(color: restOfTextPartColor),
    );
  }
}
