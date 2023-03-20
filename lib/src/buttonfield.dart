import 'package:flutter/material.dart';

class buttonfield extends StatefulWidget {
  const buttonfield({super.key});

  @override
  State<buttonfield> createState() => _buttonfieldState();
}

class _buttonfieldState extends State<buttonfield> {
  @override
  Widget build(BuildContext context) {
    String lectureName = '';
    String professorName = '';
    String time = '';

    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('강의 추가'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: '강의명',
                    ),
                    onChanged: (String value) {
                      setState(() {
                        lectureName = value;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: '교수명',
                    ),
                    onChanged: (String value) {
                      setState(() {
                        professorName = value;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: '시간',
                    ),
                    onChanged: (String value) {
                      setState(() {
                        time = value;
                      });
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('취소'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      // Do something with the input values
                      // Here, we're just clearing them
                      lectureName = '';
                      professorName = '';
                      time = '';
                    });
                  },
                  child: const Text('확인'),
                ),
              ],
            );
          },
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
