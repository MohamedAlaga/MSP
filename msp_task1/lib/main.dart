import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics() ,
        child: Column(children: [
          Row(children: [
            textButton(reqText: "الاخبار"),
            textButton(reqText: "المجلات")
          ]),
          Row(
            children: [
              photoButton(
                  imageLoc: "lib/assets/11.jpg", topText: "مجله السيارات"),
              photoButton(imageLoc: "lib/assets/22.jpg", topText: "مجله السياسة")
            ],
          ),
          Row(
            children: [
              photoButton(
                  imageLoc: "lib/assets/33.jpg", topText: "مجله السياحه"),
              photoButton(imageLoc: "lib/assets/44.jpg", topText: "مجله التكنولوجيا")
            ],
          ),
          Row(
            children: [
              photoButton(
                  imageLoc: "lib/assets/55.jpg", topText: "مجله الرياضه"),
              photoButton(imageLoc: "lib/assets/66.jpg", topText: "مجله حواء")
            ],
          ),
          Row(
            children: [
              photoButton(
                  imageLoc: "lib/assets/77.jpg", topText: "مجله الصحه"),
              photoButton(imageLoc: "lib/assets/88.jpg", topText: "مجله الأقت")
            ],
          ),
          Row(
            children: [
              photoButton(
                  imageLoc: "lib/assets/99.jpg", topText: "مجله الفذاء"),
              photoButton(imageLoc: "lib/assets/10.jpg", topText: "مجله الالغاز")
            ],
          ),
          Row(
            children: [
              photoButton(
                  imageLoc: "lib/assets/99.jpg", topText: "مجله الفذاء"),
              photoButton(imageLoc: "lib/assets/10.jpg", topText: "مجله الالغاز")
            ],
          ),
        ]),
      ),
    );
  }
}

class photoButton extends StatelessWidget {
  String imageLoc;
  String topText;
  photoButton({
    super.key,
    required this.imageLoc,
    required this.topText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset(
              this.imageLoc,
              height: 140,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 120,
                height: 30,
                alignment: Alignment.center,
                color: Colors.purple.withOpacity(0.8),
                child: Text(
                  this.topText,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class textButton extends StatelessWidget {
  String reqText;
  textButton({
    required this.reqText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 3, right: 3, bottom: 3),
        child: Container(
          color: Colors.purple,
          child: Text(
            this.reqText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
