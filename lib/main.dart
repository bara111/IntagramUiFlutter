import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _locations = ['English(Palestine)', 'B', 'C', 'D'];
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new DropdownButton(
                hint: Text('Please choose a Language',),
                // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Instagram",
                      style: TextStyle(fontSize: 60, fontFamily: 'bara'),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 15),
                ],
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 30.0,right: 30.0),
                      child: Container(
                        width: double.infinity,
                        color: Colors.black12,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone number, email or username',
                              hintStyle: TextStyle(fontSize: 15),
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 30.0,right: 30.0),

                      child: Container(
                        width: double.infinity,
                        color: Colors.black12,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(fontSize: 15),
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 30.0,right: 30.0),
                      child: new SizedBox(
                        width: double.infinity,
                        child: new RaisedButton(
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: new Text(
                              'Log In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15.0),
                            ),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Forgot your login details?"),
                        RawMaterialButton(
                            constraints: BoxConstraints(),
                            padding: EdgeInsets.all(5.0),
                            // optional, in order to add additional space around text if needed
                            child: Text(
                              'Get help signing in',
                            ), onPressed: () {},)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 30.0,right: 30.0),
                      child: new SizedBox(
                        width: double.infinity,
                        child: new RaisedButton(
                          color: Colors.lightBlue,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: new Text(
                              'Log in as @bara_amarneh',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15.0),
                            ),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 8.0),
                      child: Text(
                        "OR",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?"),
                  RawMaterialButton(
                    constraints: BoxConstraints(),
                    padding: EdgeInsets.all(5.0),
                    // optional, in order to add additional space around text if needed
                    child:
                        Text('Sign up'),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
