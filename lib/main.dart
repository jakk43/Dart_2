import "package:flutter/material.dart";

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
        //backgroundColor: Color(0xff534535),
        appBar: AppBar(
          title: Center(child: Text('Taxi utcc')),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'WELCOME !',
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Student id',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.purple,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.purple,
                      child: Text('Login'),
                      onPressed: () {
                        // print(nameController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchButton()),
                        );
                      },
                    )),
              ],
            )));
  }
}

// ignore: must_be_immutable
class SearchButton extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Takushi"),
      ),
      body: Center(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),

                  labelText: 'Search',
                  // icon: Icon(Icons.search),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
