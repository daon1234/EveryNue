import 'package:flutter/material.dart';
import 'buttonfield.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    var onetablesize = (screenwidth - 40) / 5;

    Widget buildCell(String text,
        {AlignmentGeometry alignment = Alignment.center}) {
      return Container(
        width: onetablesize - 30,
        height: onetablesize,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Align(
          alignment: alignment,
          child: Text(text),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('시간표'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  width: 20,
                ),
                Text('월'),
                Text('화'),
                Text('수'),
                Text('목'),
                Text('금'),
                SizedBox(width: 20)
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    buildCell(''),
                    buildCell(''),
                    buildCell(''),
                    buildCell(''),
                    buildCell(''),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const buttonfield(),
    );
  }
}
