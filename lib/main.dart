import "package:flutter/material.dart";
// ignore: unused_import
import 'package:TaxiApp2/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple), home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5861ae),
        // appBar: AppBar(
        //   title: Center(child: Text('TAKUSHI')),
        // ),
        body: Padding(
            padding: EdgeInsets.all(10),
            //   padding: EdgeInsets.only(left: 50, right: 50),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(20),
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.shortpixel.ai/client/q_glossy,ret_img/https://www.care-nation.com/wp-content/uploads/2018/09/social-instagram-new-circle-512.png'),
                                  fit: BoxFit.fill))),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                ),

                // SizedBox(height: 100.0),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 70, right: 70),
                  child: MaterialButton(
                    height: 60,
                    minWidth: 300,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(40)),
                    onPressed: () {},
                    child: Text(
                      "ลงทะเบียน",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 70, right: 70),
                  child: MaterialButton(
                    height: 60,
                    minWidth: 300,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(40)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => myhome()));
                    },
                    child: Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            )));
  }
}

// ignore: camel_case_types
class myhome extends StatelessWidget {
  const myhome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: MyHomePage(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
