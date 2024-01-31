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
    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) {
        return const Padding(
         padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
          child: Divider(
            color: Color(0xff93A4B5),
          ),
        );
      },
      shrinkWrap: true,
      itemCount: nameOfList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top:  20.0,
            bottom: 8.0,
          ),
          child: Row(
            children: [
              const Icon(Icons.check, color: Color(0xff93A4B5), size: 20),
              const SizedBox(width: 10),
              buildRichText(nameOfList[index]),
            ],
          ),
        );
      },
    );
  }

  Widget buildRichText(String text) {
    List<String> keywords = ["Free filter", "2 Free", "Unlimited", "10% off"];
    Color keywordColor = const Color(0xff93A4B5);
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
