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
  fontWeight: FontWeight.w400,
  color: Colors.grey,
  fontSize: 16,
);
const label3 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  color: Colors.black,
  fontSize: 16,
);

const label4 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  color: Colors.grey,
  fontSize: 12,
);

class ThirdPage1 extends StatefulWidget {
  const ThirdPage1({Key? key}) : super(key: key);

  @override
  State<ThirdPage1> createState() => _ThirdPage1State();
}

class _ThirdPage1State extends State<ThirdPage1> {
  Color _color = Colors.grey;
  Color _color1 =Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage('images/doctor1.jpg'),
                          fit: BoxFit.fill,

                        ),
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 150,
                          child: Text('Dr. Andrew Albert', style: label1)),
                      Text('Heart Speailist', style: label2),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[300]
                            ),
                            child: Icon(
                              Icons.mail,
                              color: Colors.orangeAccent,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[300]
                            ),
                            child: Icon(
                              Icons.call,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 40,
                            width: 40,
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[300]
                            ),
                            child: Icon(
                              Icons.emergency_recording,
                              color: Colors.black,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: label3,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Doctors, also known as physicians, are licensed health professionals who maintain and restore human health through the practice of medicine.and counsel patients on their health and well-being.',
                    style: label4,
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Address', style: label3),
                            Text(
                              '132, My Street, Bigtown BG23, 4YZ, England',
                              style: label4,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.punch_clock,
                        color: Colors.grey,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Daily Practice', style: label3),
                            Text(
                              'Monday - Friday Open till 7PM',
                              style: label4,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Activity',
              style: label1,
            ),

            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _color = Colors.orangeAccent;
                              _color1 = Colors.grey;

                            });
                          },
                          child: Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                              color: _color,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.note,

                                ),
                                const Text(
                                  'List of Schedule',
                                  style: label3,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 150,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _color = Colors.grey;
                              _color1 = Colors.orangeAccent;

                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                              color: _color1,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.note,

                                ),
                                const Text(
                                  'Doctor\'s daily post',
                                  style: label3,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
