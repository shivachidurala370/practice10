import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        body: Stack(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xFFccdbf8),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back,",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF415b7c)),
                          ),
                          Text(
                            "Azarro The Dev!",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF415b7c)),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFfffefb),
                            image: DecorationImage(
                              image: AssetImage("assets/avatar.png"),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                height: 70,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xFF436cbc),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Spending",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFb0cffd),
                          ),
                        ),
                        Text(
                          "today",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFb0cffd),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 30,
                          color: Color(0xFFfffeff),
                        ),
                        Text(
                          "100",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFfffeff)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            ".30",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFfffeff)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 160,
              right: 20,
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF3d6bb8)),
                child: Icon(
                  Icons.calendar_today,
                  color: Color(0xFFf6fafb),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 100),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFebebeb),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Color(0xFFa3a3a3),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Search your spending",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFFa3a3a3),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFeaeaea), blurRadius: 5)
                                ],
                                color: Color(0xFFffffff),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color(0xFFfffffd),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/groceries.jpeg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        size: 30,
                                        color: Color(0xFF295093),
                                      ),
                                      Text(
                                        "28",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF295093)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Text(
                                          ".30",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF295093)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFbdceea),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.file_upload,
                                              size: 20,
                                              color: Color(0xFFf8fdff),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFbdceea),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.file_copy,
                                              size: 20,
                                              color: Color(0xFFf8fdff),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFffcd84),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Text(
                                  "GROCERIES",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFf8ecc2)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFeaeaea), blurRadius: 5)
                                ],
                                color: Color(0xFFffffff),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color(0xFFfffffd),
                                      image: DecorationImage(
                                          image: AssetImage("assets/food.png"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        size: 30,
                                        color: Color(0xFF295093),
                                      ),
                                      Text(
                                        "28",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF295093)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Text(
                                          ".30",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF295093)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFbdceea),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.file_upload,
                                              size: 20,
                                              color: Color(0xFFf8fdff),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFbdceea),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.file_copy,
                                              size: 20,
                                              color: Color(0xFFf8fdff),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFb7efff),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Text(
                                  "FOOD",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFdff8f4)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFeaeaea), blurRadius: 5)
                                ],
                                color: Color(0xFFffffff),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color(0xFFfffffd),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/beauty.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        size: 30,
                                        color: Color(0xFF295093),
                                      ),
                                      Text(
                                        "28",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF295093)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Text(
                                          ".30",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF295093)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFbdceea),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.file_upload,
                                              size: 20,
                                              color: Color(0xFFf8fdff),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFbdceea),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.file_copy,
                                              size: 20,
                                              color: Color(0xFFf8fdff),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFfcdddb),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Text(
                                  "BEAUTY",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFfff8f6)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFffffff),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.event_note,
                  color: Color(0xFF5198c2),
                ),
                Icon(
                  Icons.home,
                  color: Color(0xFF6a6a6a),
                ),
                Icon(
                  Icons.person,
                  color: Color(0xFF6a6a6a),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
