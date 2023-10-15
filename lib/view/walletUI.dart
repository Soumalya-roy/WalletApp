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
    var pimg =
        "https://media.istockphoto.com/id/1246254218/pt/vetorial/glowing-neon-line-create-account-screen-icon-isolated-on-black-background-vector.jpg?s=612x612&w=0&k=20&c=nScORF5XsUV2WAUMD_eHGJFohlP4GBdreCacmr75pNA=";
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
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 20),
                ),
              ),
              Positioned(
                top: 55,
                left: 15,
                child: Text(
                  "**** **** **** ${n}",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Positioned(
                top: 110,
                left: 15,
                child: Row(
                  children: [
                    Text(
                      "Expires",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 20),
                    ),
                    Text(
                      "  ${m}/${y}",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 30),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 10,
                  right: 5,
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(visa))),
                  )),
            ],
          ),
        ),
      );
    }

    Widget PeopleCard(var img, var name) {
      return Padding(
        padding: const EdgeInsets.all(6.0),
        child: GestureDetector(
          onTap: () {},
          child: Card(
            elevation: 5,
            color: Colors.grey.shade100,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: height * 0.15,
              width: width * 0.25,
              child: Center(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(img),
                        )),
                    Text(
                      "${name}",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget AddPeopleCard() {
      return Padding(
        padding: const EdgeInsets.all(6.0),
        child: GestureDetector(
          onTap: () {},
          child: Card(
            elevation: 5,
            color: Colors.grey.shade100,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: height * 0.15,
              width: width * 0.25,
              child: Center(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.blue,
                          size: 40,
                        )),
                    Text(
                      "Add Money",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    )
                  ],
                ),
              ),
            ),
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
                  height: height * 0.53,
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
                                      icon: Icon(
                                        Icons.notifications,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    )),
                                Positioned(
                                    top: height * 0.1,
                                    right: 10,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 30,
                                      ),
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
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "    Send Money",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: width * 0.51,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_right),
                )
              ],
            ),
            Container(
              height: height * 0.16,
              width: width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) =>
                      (index == 0) ? AddPeopleCard() : PeopleCard(pimg, "Roy")),
            ),
          ],
        ),
      ),
    );
  }
}
