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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
    ));
  }
}

class MyClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    /// Triangle
    // path.moveTo(size.width/2, 0);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);

    /// Reverse Zerodha Loga
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width/2, size.height/2);

    /// Half U Logo
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    // path.quadraticBezierTo(size.width, size.height/2, 0, 0);

    /// Kite Logo
    // path.moveTo(size.width, 0);
    // path.lineTo(0, 0);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width/2, size.height/2);

    /// I Logo
    // path.moveTo(size.width/2, 0);
    // path.lineTo(size.width/2, size.height);
    // path.lineTo(size.width/3, size.height);
    // path.lineTo(size.width/3, 0);


    /// A Logo
    // path.moveTo(size.width/2, 0);
    // path.lineTo(size.width/2, size.height);
    // path.moveTo(size.width/2, 0);
    // path.lineTo(size.width/3, size.height);
    // path.moveTo(size.width/3, size.height/2);
    // path.cubicTo(size.width/2, 0, size.width/2, size.height, size.width/3, size.height);

    /// Right Arrow Sign
    // path.moveTo(0, 0);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height / 2);

    /// UnBelievable Build LOGO
    // path.moveTo(size.width/2, 0);
    // path.lineTo(size.width*0.8, size.height/2);
    // path.lineTo(size.width*0.3, size.height/2);
    // path.lineTo(size.width*0.8, size.height);
    // path.lineTo(size.width*0.3, size.height);

    /// Two Triangle
    // path.moveTo(size.width/2, 0);
    // path.lineTo(size.width*0.8, size.height/2);
    // path.lineTo(size.width*0.3, size.height/2);
    // path.moveTo(size.width*0.55, size.height/2);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);


    // path.moveTo(size.width/2, 0);
    // path.lineTo(size.width*0.8, size.height/2);
    // path.lineTo(size.width*0.3, size.height/2);
    //
    // path.moveTo(0, size.height/2);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.quadraticBezierTo(size.width/2, size.height, size.width, size.height/2);

    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, 0);
    // // path.addOval(Rect.fromCenter(center: Offset(size.width/2,size.height/2), width: 100, height: 50));
    // path.addOval(Rect.fromCircle(center: Offset(size.width/2,size.height), radius: 15));
    // path.addOval(Rect.fromCircle(center: Offset(size.width,size.height/2), radius: 15));
    // path.addOval(Rect.fromCircle(center: Offset(0,size.height/2), radius: 15));
    // path.addOval(Rect.fromCircle(center: Offset(size.width/2,0), radius: 15));


    path.lineTo(0, size.height);
    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 10;
    while (curXPos < size.width) {
      curXPos += increment;
      curYPos = curYPos == size.height ? size.height - 30 : size.height;
      path.lineTo(curXPos, curYPos);
    }
    path.lineTo(size.width, 0);


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;


}



