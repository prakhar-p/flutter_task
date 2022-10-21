import 'ThirdPage1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const label1 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  color: Colors.black,
  fontSize: 25,
);

const label2 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  color: Colors.black,
  fontSize: 20,
);

const label3 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  color: Colors.grey,
  fontSize: 12,
);
const label4 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  color: Colors.black,
  fontSize: 14,
);
const label5 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  color: Colors.black,
  fontSize: 16,
);
const style =
    TextStyle(fontSize: 12, fontFamily: 'Roboto', fontWeight: FontWeight.w400);

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color _color = Colors.white;
  Color _color1 = Colors.white;
  Color _color2 = Colors.white;
  Color _color3 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 170,
              child: Text(
                'Find your Consultation',
                style: label1,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.orange[200]),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: style,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Categories',
              style: label2,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _color = Colors.orangeAccent;
                        _color1 = Colors.white;
                        _color2 = Colors.white;
                        _color3 = Colors.white;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: _color,
                      ),
                      child: const Text(
                        'Adults',
                        style: label3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _color = Colors.white;
                        _color1 = Colors.orangeAccent;
                        _color2 = Colors.white;
                        _color3 = Colors.white;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      height: 40,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: _color1,
                      ),
                      child: const Text(
                        'Children',
                        style: label3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _color = Colors.white;
                        _color1 = Colors.white;
                        _color2 = Colors.orangeAccent;
                        _color3 = Colors.white;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: _color2,
                      ),
                      child: const Text(
                        'Women',
                        style: label3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _color = Colors.white;
                        _color1 = Colors.white;
                        _color2 = Colors.white;
                        _color3 = Colors.orangeAccent;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: _color3,
                      ),
                      child: const Text(
                        'Mens',
                        style: label3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    shadowColor: Colors.white,
                    elevation: 50,
                    color: Colors.orange[200],
                    child: SizedBox(
                      width: 130,
                      height: 150,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cough & Cold',
                              style: label5,
                            ),
                            Text(
                              '15 Doctor',
                              style: label3,
                            ),
                            SizedBox(height: 10,),
                            Expanded(
                              child: Container(

                                decoration: BoxDecoration(
                                  color: Colors.orange[200],
                                    image: DecorationImage(

                                  image: AssetImage('images/cough.png'),
                                  fit: BoxFit.fill,


                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    shadowColor: Colors.white,
                    elevation: 50,
                    color: Colors.orange[200],
                    child: SizedBox(
                      width: 130,
                      height: 150,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Heart Specialist',
                              style: label5,
                            ),
                            Text(
                              '15 Doctor',
                              style: label3,
                            ),
                            SizedBox(height: 10,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('images/heart.png'),
                                  fit: BoxFit.fill,
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    shadowColor: Colors.white,
                    elevation: 50,
                    color: Colors.orange[200],
                    child: SizedBox(
                      width: 130,
                      height: 150,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lungs Specialist',
                              style: label5,
                            ),
                            Text(
                              '15 Doctor',
                              style: label3,
                            ),
                            SizedBox(height: 10,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('images/lung.png'),
                                  fit: BoxFit.fill,
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Doctors',
              style: label2,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const ThirdPage1()));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.orange[100]),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/doctor1.jpg'),
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Dr. Andrew Albert', style: label4),
                        Text(
                          'Heart Speailist',
                          style: label3,
                        )
                      ],
                    )),
                    SizedBox(width: 80,),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.orangeAccent,),
                      child: Text('Call'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
