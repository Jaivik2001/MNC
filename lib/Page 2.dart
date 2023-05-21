import 'package:flutter/material.dart';
import 'Page 3.dart';

class Page2 extends StatefulWidget {

  String ceo = "", mnc = "", des = "";
  var logo, image;
  Page2({required String ceo, mnc, des, required var logo, image})
  {
    this.ceo = ceo;
    this.mnc = mnc;
    this.des = des;
    this.logo = logo;
    this.image = image;
  }

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double H = MediaQuery
        .of(context)
        .size
        .height;
    double W = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Page",
          style: TextStyle(
            fontSize: 25,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff212121),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(widget.image),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.ceo,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "CEO",
                        style: TextStyle(
                          color: Color(0xff9E9E9E),
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Company Details",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    //alignment: Alignment.centerLeft,
                    child: Image(
                      image: AssetImage(widget.logo),
                    ),
                  ),
                  Text(
                    widget.mnc,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Company Description",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                widget.des,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff515151),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}