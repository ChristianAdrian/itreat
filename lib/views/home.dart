import 'package:flutter/material.dart';
import 'package:itreat/views/itreatnow.dart';
import 'package:itreat/widgets/appbar.dart';
import 'package:itreat/widgets/drawer.dart';
import 'package:itreat/widgets/custom_expansion_tile.dart' as custom;

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/Group 6084.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // centerTitle: true,
          elevation: 0.0,
          title: Image.asset('assets/images/Symbol 1.png'),
          backgroundColor: //Color.fromRGBO(239, 133, 33, 1),
              Colors.black,
          iconTheme: new IconThemeData(color: Colors.white),
        ),
        endDrawer: CustomDrawer(),
        body: Center(
          // child: SingleChildScrollView(
          child: Column(
            children: [
              Visibility(
                visible: isVisible,
                child: SizedBox(
                  height: 20,
                ),
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    //Image.asset('assets/images/Path 89.png'),
                    Image.asset('assets/images/Group 6083.png'),
                  ],
                ),
              ),
              new SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Container(
                  width: MediaQuery.of(context).size.width / 2,
                  padding: const EdgeInsets.only(top: 10.0),
                  child: new RaisedButton(
                    color: Color.fromRGBO(226, 31, 124, 1),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(16.0),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      side: BorderSide(color: Color.fromRGBO(226, 31, 124, 1)),
                    ),
                    onPressed: () {
                      setState(() {
                        if (isVisible) {
                          isVisible = false;
                        } else {
                          isVisible = true;
                        }
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      // width: MediaQuery.of(context).size.width / 2.8,
                      //height: 30,
                      child: Text(
                        'Learn More',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              new SizedBox(height: 20),
              Visibility(
                visible: isVisible,
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        // width: MediaQuery.of(context).size.width / 2.8,
                        //height: 30,
                        child: custom.ExpansionTile(
                          headerBackgroundColor: Colors.black,
                          iconColor: Colors.white,
                          //backgroundColor: Colors.black,
                          //childrenPadding: EdgeInsets.all(16),
                          backgroundColor: Colors.grey[50],
                          title: Text(
                            'Itreatnow',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/Temp-12.png',
                                    scale: 2,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pay',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'a friend, store, or even bills!',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/Temp-14.png',
                                    scale: 2,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Souk daily',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Shop at your nearby shops where you can get your item deliverd in no time!',
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/Temp-13.png',
                                    scale: 2,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Book a place in advance',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'give yourself a piece of mind',
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/Temp-54.png',
                                    scale: 1,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Community Group chats',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Create your own circle and meet friends',
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: new Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: new RaisedButton(
                                    color: Color.fromRGBO(226, 31, 124, 1),
                                    textColor: Colors.white,
                                    padding: EdgeInsets.all(16.0),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      side: BorderSide(
                                          color:
                                              Color.fromRGBO(226, 31, 124, 1)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ItreatNow()));
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      // width: MediaQuery.of(context).size.width / 2.8,
                                      //height: 30,
                                      child: Text(
                                        'Know More',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        color: Colors.grey[50],
                        alignment: Alignment.center,
                        // width: MediaQuery.of(context).size.width / 2.8,
                        //height: 30,
                        child: custom.ExpansionTile(
                          headerBackgroundColor: Colors.black,
                          iconColor: Colors.white,
                          title: Text(
                            'ItreatX',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Full Control',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                      'being a member itreatx lets you access all this service'),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/Temp-11.png',
                                            scale: 2,
                                          ),
                                          Text('Delivery'),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/Temp-13.png',
                                            scale: 2,
                                          ),
                                          Text('Booking'),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/Temp-12.png',
                                            scale: 2,
                                          ),
                                          Text('Pay'),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/Temp-14.png',
                                            scale: 2,
                                          ),
                                          Text('Commerce'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: new Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: new RaisedButton(
                                          color:
                                              Color.fromRGBO(226, 31, 124, 1),
                                          textColor: Colors.white,
                                          padding: EdgeInsets.all(16.0),
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(25.0),
                                            side: BorderSide(
                                                color: Color.fromRGBO(
                                                    226, 31, 124, 1)),
                                          ),
                                          onPressed: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            // width: MediaQuery.of(context).size.width / 2.8,
                                            //height: 30,
                                            child: Text(
                                              'Know More',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  new SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
          // ),
        ),
      ),
    );
  }
}
