import 'package:flutter/material.dart';
import 'package:itreat/views/signup.dart';
import 'package:itreat/widgets/drawer.dart';

class ItreatNow extends StatefulWidget {
  const ItreatNow({Key key}) : super(key: key);

  @override
  _ItreatNowState createState() => _ItreatNowState();
}

class _ItreatNowState extends State<ItreatNow> {
  List dataList1 = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              child: Image.asset(
                'assets/images/manholdingcard.png',
                // scale: 2,
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
                color: Colors.grey[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ItreatNow',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(226, 31, 124, 1)),
                    ),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'We empower consumers daily habit in many ways, from u to go, things to do, product to b'),
                          TextSpan(
                              text:
                                  'We empower consumers daily habit in many ways, from u to go, things to do, product to b'),
                          TextSpan(text: ' and that you have read our '),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'We empower consumers daily habit in many ways, from u to go, things to do, product to b'),
                          TextSpan(
                              text:
                                  'We empower consumers daily habit in many ways, from u to go, things to do, product to b'),
                          TextSpan(text: ' and that you have read our '),
                        ],
                      ),
                    ),
                  ],
                )),
            Container(
              color: Colors.white,
              child: Image.asset(
                'assets/images/itreatapp in phone 2.png',
                // scale: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pay',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Souk daily',
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Book a place in advance',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Community Group chats',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                ],
              ),
            ),
            SizedBox(height: 20),
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
                      borderRadius: new BorderRadius.circular(25.0),
                      side: BorderSide(color: Color.fromRGBO(226, 31, 124, 1)),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      // width: MediaQuery.of(context).size.width / 2.8,
                      //height: 30,
                      child: Text(
                        'become a member',
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
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
