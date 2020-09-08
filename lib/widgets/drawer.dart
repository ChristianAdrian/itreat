import 'package:flutter/material.dart';
import 'package:itreat/views/home.dart';
import 'package:itreat/views/signup.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        // child: Container(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                      alignment: Alignment.center,
                      child: Text(
                        'menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Color.fromRGBO(247, 186, 23, 1)),
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            //    height:  MediaQuery.of(context).size.height / 2,
                            //padding:EdgeInsets.all(16),
                            alignment: Alignment.center,
                            // child: Image.asset('assets/images/home.png'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Home',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            //    height:  MediaQuery.of(context).size.height / 2,
                            //padding:EdgeInsets.all(16),
                            alignment: Alignment.center,
                            //  child: Image.asset('assets/images/order.png'),
                          ),
                          SizedBox(width: 10),
                          Text('About us',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        ],
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: 30,
                                //    height:  MediaQuery.of(context).size.height / 2,
                                //padding:EdgeInsets.all(16),
                                alignment: Alignment.center,
                                //  child: Image.asset('assets/images/wallet.png'),
                              ),
                              SizedBox(width: 10),
                              Text('Products',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            //    height:  MediaQuery.of(context).size.height / 2,
                            //padding:EdgeInsets.all(16),
                            alignment: Alignment.center,
                            // child: Image.asset('assets/images/setting.png'),
                          ),
                          SizedBox(width: 10),
                          Text('Solutions',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        ],
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            //    height:  MediaQuery.of(context).size.height / 2,
                            //padding:EdgeInsets.all(16),
                            alignment: Alignment.center,
                            // child: Image.asset('assets/images/info.png'),
                          ),
                          SizedBox(width: 10),
                          Text('Blogs',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        ],
                      ),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    new SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: new OutlineButton(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(25.0),
                                color: Color.fromRGBO(226, 31, 124, 1)),
                            padding: EdgeInsets.all(16),
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: new Text("Become a member",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500))),
                              ],
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Signup()),
                          );
                        },
                      ),
                    ),
                    new SizedBox(height: 20),
                    ListTile(
                      title: Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            //    height:  MediaQuery.of(context).size.height / 2,
                            //padding:EdgeInsets.all(16),
                            alignment: Alignment.center,
                            // child: Image.asset('assets/images/info.png'),
                          ),
                          SizedBox(width: 10),
                          Text('Contact us',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        ],
                      ),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            //    height:  MediaQuery.of(context).size.height / 2,
                            //padding:EdgeInsets.all(16),
                            alignment: Alignment.center,
                            // child: Image.asset('assets/images/info.png'),
                          ),
                          SizedBox(width: 10),
                          Text('FAQ',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        ],
                      ),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            //    height:  MediaQuery.of(context).size.height / 2,
                            //padding:EdgeInsets.all(16),
                            alignment: Alignment.center,
                            // child: Image.asset('assets/images/info.png'),
                          ),
                          SizedBox(width: 10),
                          Text('T&C | Policy',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        ],
                      ),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    new SizedBox(height: 75),
                    OutlineButton(
                      child: Container(
                          padding: EdgeInsets.all(16),
                          child: Stack(
                            children: <Widget>[
                              Center(
                                  child: new Text("Close",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300))),
                            ],
                          )),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(16.0)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
