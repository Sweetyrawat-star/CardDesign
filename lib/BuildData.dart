import 'package:CardDesign/utilClass.dart';
import 'package:flutter/material.dart';

class ColoredList extends StatelessWidget {
  final List<Map<String, dynamic>> textData = [
    {
      'text': 'Free filter ',
      'subText': 'kit replacement worth ₹5,210',
    },
    {'text': '2 Free ', 'subText': ' maintenance services worth ₹1,060'},
    {'text': 'Unlimited ', 'subText': 'service visits'},
    {'text': '10% off ', 'subText': 'on spare parts replacement'},
  ];

  ColoredList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: textData.length,
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
                  width: MediaQuery.of(context).size.width * 0.72,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: index == textData.length - 1
                            ? Colors.transparent
                            : ColorUtils.greyBlue,
                        width: 0.7,
                      ),
                    ),
                  ),
                  height: 60,
                  child: Row(
                    children: [
                      Text(
                        textData[index]['text'],
                        style: const TextStyle(
                            color: ColorUtils.greyBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 0.25),
                      ),
                      Text(
                        textData[index]['subText'],
                        style: const TextStyle(
                            color: Color(0xff424242),
                            fontSize: 12,
                            letterSpacing: 0.25),
                      ),
                    ],
                  )
                  //  buildRichText(nameOfList[index])
                  ),
            ],
          ),
        );
      },
    );
  }
}
