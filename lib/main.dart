import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(412, 915),
        builder: (_, child) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Layout Challenge 2"),
              ),
              body: Container(
                height: 290.h,
                width: 290.w,
                decoration: const BoxDecoration(color: Colors.purple),
                child: const Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomBox(
                              color: Colors.blue,
                              text: "3",
                              height: 120,
                              width: 170,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomBox(
                              color: Colors.green,
                              text: "4",
                              height: 170,
                              width: 120,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomBox(
                          color: Colors.red,
                          text: "1",
                          height: 120,
                          width: 170,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomBox(
                          color: Colors.orange,
                          text: "2",
                          height: 170,
                          width: 120,
                        ),
                      ],
                    ),
                    Center(
                      child: Text("5", style: TextStyle(fontSize: 24)),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class CustomBox extends StatelessWidget {
  final Color color;
  final String text;
  final double width;
  final double height;

  const CustomBox({
    super.key,
    required this.color,
    required this.text,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width.w,
          height: height.h,
          color: color,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
      ],
    );
  }
}
