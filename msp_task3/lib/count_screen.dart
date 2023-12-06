import 'package:flutter/material.dart';

class counterScreen extends StatefulWidget {
  final String mail;
  final String userName;
  counterScreen({super.key, required this.mail, required this.userName});
  @override
  State<counterScreen> createState() => _counterScreenState();
}

class _counterScreenState extends State<counterScreen> {
  @override
  int num = 0;
  void _add()
  {
    setState(() {
      num++;
    });
  }
  void _decrease()
  {
    setState(() {
      num--;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Counter App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text('  Your email is ${widget.mail} '),
          SizedBox(
            height: 30,
          ),
          Text('  Your user name is ${widget.userName}'),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  this.num.toString(),
                  style: TextStyle(fontSize: 100),
                ),
                width: double.infinity,
              ),
              SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: _decrease,
                    child: Text('_',style: TextStyle(fontSize:30 )),
                    style: ElevatedButton.styleFrom( fixedSize: Size.fromRadius(55)),
                  ),
                  ElevatedButton(
                    onPressed: _add,
                    child: Text('+',style: TextStyle(fontSize:30 )),
                    style: ElevatedButton.styleFrom( fixedSize: Size.fromRadius(55)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
