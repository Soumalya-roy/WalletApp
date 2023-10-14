import 'package:flutter/material.dart';

class WalletHome extends StatefulWidget {
  const WalletHome({super.key});

  @override
  State<WalletHome> createState() => _WalletHomeState();
}

class _WalletHomeState extends State<WalletHome> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var img =
        "https://c8.alamy.com/comp/KNW1BJ/money-seamless-pattern-line-style-finances-endless-background-business-KNW1BJ.jpg";
    var visa =
        "https://static.vecteezy.com/system/resources/previews/022/100/873/original/visa-logo-transparent-free-png.png";

    Widget CARD(int n, int m, int y) {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: height * 0.3,
          width: width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green.withOpacity(0.8),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            clipBehavior: Clip.hardEdge,
            children: [
              Positioned(
                top: 20,
                left: 15,
                child: Text(
                  "Card No. ",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              ),
              Positioned(
                top: 40,
                left: 15,
                child: Text("**** **** **** ${n}"),
              ),
              Positioned(
                top: 70,
                left: 15,
                child: Text(
                  "Expires  ${m}/${y}",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              ),
              Positioned(
                  top: 10, left: 10, child: Image(image: NetworkImage(visa))),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      drawer: Drawer(),
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Container(
                  height: height * 0.6,
                  child: Column(
                    children: [
                      Card(
                          elevation: 50,
                          child: Container(
                            height: height * 0.4,
                            width: width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(img),
                                    fit: BoxFit.cover)),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: height * 0.1,
                                    left: 20,
                                    child: Text(
                                      "Wallet",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color:
                                              Color.fromARGB(255, 18, 107, 21)),
                                    )),
                                Positioned(
                                    top: 20,
                                    right: 10,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.notifications,
                                          color: Colors.black),
                                    )),
                                Positioned(
                                    top: height * 0.1,
                                    right: 10,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon:
                                          Icon(Icons.add, color: Colors.black),
                                    )),
                              ],
                            ),
                          )),
                      Container(
                        height: height * 0.089,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: height * 0.25,
                  child: SingleChildScrollView(
                    child: Container(
                      height: height * 0.3,
                      width: width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.hardEdge,
                        itemCount: 5,
                        itemBuilder: (context, index) => CARD(9988, 06, 23),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
