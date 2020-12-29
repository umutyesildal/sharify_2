import 'package:flutter/material.dart';
import 'add_page.dart';
import 'package:sharify/constants.dart';

class addBook extends StatefulWidget {
  @override
  _addBookState createState() => _addBookState();
}

class _addBookState extends State<addBook> {
  String dropdownValue = 'Type';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Share a book',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => addPage()));
          },
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '  Title of Item',
                    hintStyle: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black26,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '     Description of Item',
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black26,
                    ),
                  ),
                ),



                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today, color: Colors.black,),
                      border: InputBorder.none,
                      hintText: ' Pick-up Times',
                      hintStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.location_on_outlined, color: Colors.black,),
                      border: InputBorder.none,
                      hintText: ' Location',
                      hintStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    dropdownColor: Colors.green,
                    icon: Icon(Icons.arrow_drop_down_outlined, color: Colors.black,),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black26,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['Type', 'None','Historical', 'Science-Fiction', 'Biography','Poetry',"Children's"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 170.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'You can add total 10 photos.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black26,
                        fontSize: 21.0,
                      ),),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );



  }
}
