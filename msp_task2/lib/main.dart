import 'package:flutter/material.dart';

var content = {
  "مجله السيارات": "lib/assets/11.jpg",
  "مجله السياسة": "lib/assets/22.jpg",
  "مجله السياحه": "lib/assets/33.jpg",
  "مجله التكنولوجيا": "lib/assets/44.jpg",
  "مجله الرياضه": "lib/assets/55.jpg",
  "مجله حواء": "lib/assets/66.jpg",
  "مجله الصحه": "lib/assets/77.jpg",
  "مجله الأقتصاد": "lib/assets/88.jpg",
  "مجله الفذاء": "lib/assets/99.jpg",
  "مجله الالغاز": "lib/assets/10.jpg",
  "2مجله الفذاء": "lib/assets/99.jpg",
  "2مجله الالغاز": "lib/assets/10.jpg",
};
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                textButton(reqText: "الاخبار"),SizedBox(width:6,),
                textButton(reqText: "المجلات")
              ],
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1.3),
              itemCount: content.length,
              itemBuilder: (context, index) {
                return photoButton(
                    imageLoc: content.values.elementAt(index),
                    topText: content.keys.elementAt(index));
              },
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
          ],
        ),
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
    return Container(
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.bottomRight,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4,right: 4),
            child: Image.asset(
              this.imageLoc,
              height: 150,
              fit: BoxFit.fitHeight,
            ),
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
        padding: const EdgeInsets.only(top: 20),
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
