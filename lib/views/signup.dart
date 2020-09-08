import 'package:flutter/material.dart';
import 'package:itreat/widgets/drawer.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Text(
                'Are you interested in?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color.fromRGBO(226, 31, 124, 1)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/Temp-11.png',
                        scale: 2,
                      ),
                      Text('Delivery'),
                      Radio(value: null, groupValue: null, onChanged: null),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/Temp-13.png',
                        scale: 2,
                      ),
                      Text('Booking'),
                      Radio(value: null, groupValue: null, onChanged: null),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/Temp-12.png',
                        scale: 2,
                      ),
                      Text('Pay'),
                      Radio(value: null, groupValue: null, onChanged: null),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/Temp-14.png',
                        scale: 2,
                      ),
                      Text('Commerce'),
                      Radio(value: null, groupValue: null, onChanged: null),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Tell us who you are?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color.fromRGBO(226, 31, 124, 1)),
              ),
              SizedBox(height: 20),
              Container(
                child: TextFormField(
                  controller: null,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey)),
                      labelText: 'Shop Name'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: new FormField(
                  builder: (FormFieldState state) {
                    return Column(
                      children: <Widget>[
                        InputDecorator(
                          decoration: InputDecoration(
                            labelText: 'Business Type',
                          ),
                          isEmpty: true,
                          child: new DropdownButtonHideUnderline(
                            child: new DropdownButton(
                              value: null,
                              isDense: true,
                              onChanged: (String newValue) {
                                setState(() {});
                              },
                              items: dataList1.map((item) {
                                var city = "";

                                return new DropdownMenuItem(
                                  value: item['id'].toString(),
                                  child: new Text(city),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          state.hasError ? state.errorText : '',
                          style: TextStyle(
                              color: Colors.redAccent.shade700, fontSize: 12.0),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TextFormField(
                  controller: null,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey)),
                      labelText: 'Company Email'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TextFormField(
                  controller: null,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey)),
                      labelText: 'Company Number'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TextFormField(
                  controller: null,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey)),
                      labelText: 'Shop Address'),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Container(
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
                        'Send Inquiry',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'or give us a call now',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                    color: Color.fromRGBO(226, 31, 124, 1)),
              ),
              SizedBox(height: 10),
              Text(
                '+971 52 287 8000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
