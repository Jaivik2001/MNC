import 'package:flutter/material.dart';
import 'package:mnc/Page%202.dart';
import 'package:mnc/Page%203.dart';
import 'main.dart';

class Page6 extends StatefulWidget {

  String? title6;
  Page6({required String title6})
  {
    this.title6 = title6;
    print(title6);
  }

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {

    var selectPage6 = "";
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title6}",
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: H / 13,
                    child: TextField(
                      onChanged: (p1){
                        selectPage6 = p1;
                      },
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        hintText: "Page Number",
                        hintStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Ink(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: (){

                      },
                      child: Container(
                        height: H / 13,
                        alignment: Alignment.center,
                        child: const Text("Get",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: H / 13,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text("Back",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: (){
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: Container(
                      height: H / 13,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text("Home",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

