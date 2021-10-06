import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String btnText=" Click to see picture 1";
bool pictureVisibility=false;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),);
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My First App"),
      ),
      body:  SingleChildScrollView(
        child:  Align(

          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(btnText,style: TextStyle(color: Colors.white),),
                color: Colors.purple,
                  onPressed: (){
                  setState(() {
                    btnText=" picture is visible now";
                    pictureVisibility=true;
                  });


              }),
              SizedBox(
                height: 10,
              ),
             Visibility(
               visible:pictureVisibility ,
                 child: Image.network( "https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_960_720.jpg"))
            ],
          ),
        ),
      )
    );
  }
}
