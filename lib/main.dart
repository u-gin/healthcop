import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myhealthcop/button_template.dart';
import 'package:myhealthcop/colours.dart';
import 'package:myhealthcop/timeline_template.dart';

import 'appbar_custom_painter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colours.appbarColor,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
            ),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var classes = [
    'General Information',
    "Class Description",
    "Media & Resources",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(height);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.32),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Stack(
            children: [
              SizedBox(
                width: width,
                height: height * 0.3,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: CustomPaint(
                    size: Size(
                      width,
                      (width * 0.55),
                    ),
                    painter: RPSCustomPainter(),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: SizedBox(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.arrow_back),
                      Text(
                        'New Class',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colours.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(Icons.more_vert),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, right: 20.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "assets/icons/photo.png",
                    height: 50,
                    width: 50,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Untitled Class",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colours.darkGray,
                    ),
                  ),
                  const TimelineTemplate(
                    isFirst: true,
                    isLast: false,
                    tileText: "General Information",
                    tileIcon: "assets/icons/info.png",
                  ),
                  const TimelineTemplate(
                    isFirst: false,
                    isLast: false,
                    tileText: "Class Description",
                    tileIcon: "assets/icons/description.png",
                  ),
                  const TimelineTemplate(
                    isFirst: false,
                    isLast: true,
                    tileText: "Media & Resources",
                    tileIcon: "assets/icons/media.png",
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: ButtonTemplate(
                    textSize: 14.0,
                    buttonAction: () {},
                    buttonBorderRadius: 10.0,
                    buttonColor: Colours.previewButtonColor,
                    buttonHeight: 50.0,
                    buttonName: 'PREVIEW',
                    fontColor: Colours.previewButtonTextColor,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  flex: 6,
                  child: ButtonTemplate(
                    textSize: 14.0,
                    buttonAction: () {},
                    buttonBorderRadius: 10.0,
                    buttonColor: Colours.publishButtonColor,
                    buttonHeight: 50.0,
                    buttonName: 'PUBLISH CLASS',
                    fontColor: Colours.publishButtonTextColour,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
