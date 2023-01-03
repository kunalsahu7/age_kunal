import 'package:flutter/material.dart';

class age extends StatefulWidget {
  const age({Key? key}) : super(key: key);

  @override
  State<age> createState() => _ageState();
}

class _ageState extends State<age> {


  TextEditingController txttday =
  TextEditingController(text: "${DateTime.now().day}");
  TextEditingController txttmonth =
  TextEditingController(text: "${DateTime.now().month}");
  TextEditingController txttyear =
  TextEditingController(text: "${DateTime.now().year}");
  TextEditingController txtbday = TextEditingController();
  TextEditingController txtbmonth = TextEditingController();
  TextEditingController txtbyear = TextEditingController();

  int year = 0;
  int month = 0;
  int day = 0;
  int m = 0;
  int d = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Age Calculator"),
          centerTitle: true,
          backgroundColor: Color(0xff203A43),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today's Date"),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: txttday,
                            decoration: InputDecoration(
                              hintText: "DD",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color(0xFF203A43),
                                    style: BorderStyle.solid,
                                    width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: txttmonth,
                            decoration: InputDecoration(
                              hintText: "MM",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color(0xFF203A43),
                                    style: BorderStyle.solid,
                                    width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: txttyear,
                            decoration: InputDecoration(
                              hintText: "YYYY",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color(0xFF203A43),
                                    style: BorderStyle.solid,
                                    width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Date Of Birth"),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: txtbday,
                            decoration: InputDecoration(
                              hintText: "DD",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color(0xff203A43),
                                    style: BorderStyle.solid,
                                    width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: txtbmonth,
                            decoration: InputDecoration(
                              hintText: "MM",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color(0xFF203A43),
                                    style: BorderStyle.solid,
                                    width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: txtbyear,
                            decoration: InputDecoration(
                              hintText: "YYYY",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color(0xFF203A43),
                                    style: BorderStyle.solid,
                                    width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                color: Color(0xff13547A),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Clear",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            String cday = txttday.text;
                            String cmonth = txttmonth.text;
                            String cyear = txttyear.text;
                            String bday = txtbday.text;
                            String bmonth = txtbmonth.text;
                            String byear = txtbyear.text;
                            int x = int.parse(cday);
                            int y = int.parse(cmonth);
                            int z = int.parse(cyear);
                            int a = int.parse(bday);
                            int b = int.parse(bmonth);
                            int c = int.parse(byear);
                            setState(
                                  () {
                                m = b;
                                d = a;
                                year = z - c;
                                if (y >= b) {
                                  if (a >= x) {
                                    day = 30 + x - a;
                                    month = y - b - 1;
                                  } else {
                                    day = x - a;
                                    month = y - b;
                                  }
                                }
                              },
                            );
                          },
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xff13547A),
                              borderRadius:
                              BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.blue.shade900),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Calculate",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Present Age"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff13547A),
                          Color(0xff203A43),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$year",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "YYYY",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$month",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "MM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$day",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "DD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Next Birthday"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff6BBED9),
                          Color(0xff006ACB),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$m",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "MM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$d",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "DD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}