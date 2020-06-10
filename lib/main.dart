import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_widget_bank/data.dart';
import 'package:flutter_widget_bank/fullview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Widget: Swiper",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 300,
              child: Swiper(
                autoplay: true,
                autoplayDelay: 1500,
                curve: Curves.easeIn,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(images4[index]),
                        fit: BoxFit.cover,
                      ));
                },
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: SwiperPagination(),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 300,
              child: Swiper(
                itemWidth: 300,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(images2[index]),
                        fit: BoxFit.cover,
                      ));
                },
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: SwiperPagination(),
                layout: SwiperLayout.STACK,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 300,
              child: Swiper(
                itemWidth: 300,
                itemHeight: 300,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(images3[index]),
                        fit: BoxFit.cover,
                      ));
                },
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: SwiperPagination(),
                layout: SwiperLayout.TINDER,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 400,
              child: Swiper(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _send(context, images1[index]);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 300,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Hero(
                                tag: images1[index],
                                child: Image(
                                  image: AssetImage(images1[index]),
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sport Cars",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Comes from Pintrest website",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                viewportFraction: 0.8,
                scale: 0.9,
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _send(BuildContext context, image) {
  Navigator.push(context, MaterialPageRoute(builder: (_) {
    return FullView(image: image);
  }));
}
