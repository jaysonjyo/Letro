import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/3rdpage.dart';
import 'package:newapp/4thpage.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<String> img = ["assets/adds1.jpg", "assets/adds2.avif"];
  List<String> image = [
    "assets/watch2.png",
    "assets/b.png",
    "assets/c.png",
    "assets/d.png",
    "assets/e.png",
    "assets/f.png",
  ];
  List<String> txt = [
    'Apple Watch Nike Seri 5 44mm GPS Space Grey',
    'Altec Lansing Epsilonia Bluetooth Speaker',
    'JBL Clip 3 IPX7 Waterproof Portable Bluetooth',
    'Snopy SN-BT96 Pretty Back Bluetooth Headphone',
    'Altec Lansing Sunlight Speaker Bluetooth Speaker',
    'Lighting- Black Rustic Cube Lampshade Table Lamp'
  ];
  List<dynamic> price = [
    '\$460.00',
    '\$210.00',
    '\$290.90',
    '\$210.00',
    '\$866.00',
    '\$89.75'
  ];
  List<String> newimage = [
    "assets/watch.png",
    "assets/headphone.png",
    "assets/lap.png",
    "assets/spk.png",
    "assets/n.png",
    "assets/o.png",
    "assets/p.png",
    "assets/q.png"
  ];
  List<String> text=[ 'Space Gray Aluminum Case\nwith Sport Band',
  'Harman Kardon Allure\nBluetooth Speaker',
    'Lenovo V15-IWL Intel Core i7 8565U 8GB 256GB...',
    'Beats 3 Wireless Over‑Ear\nHeadphones',
    'Lighting- Black Rustic Cube Lampshade Table Lamp',
    'Snopy SN-BT96 Pretty Back Bluetooth Headphone',
    'Altec Lansing Epsilonia Bluetooth Speaker',
    'JBL Clip 3 IPX7 Waterproof Portable Bluetooth'
  ];
  List<dynamic> cash=[
   " \$399.90",
    '\$1299.90',
    '\$2.348,00',
    '\$349.00',
    '\$89.75',
    '\$210.00',
    '\$210.00',
    '\$290.90',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFF252837),
        title: const Text(
          "LETRO",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w800,
            height: 0,
            letterSpacing: 5.22,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Page3()));
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          )
        ],
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(1),
          child: TextButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 700,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFFF7F7F8),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 1,
                                              color: Color(0xFFEDEFF0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8))),
                                    child: Icon(Icons.category),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Container(
                                      width: 144,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF7F7F8),
                                          border: Border.all(
                                              color: Color(0xFFEDEFF0),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 9),
                                        child: Row(
                                          children: [
                                            Icon(Icons.swap_vert),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                "Ranking",
                                                style: TextStyle(
                                                  color: Color(0xFF646E77),
                                                  fontSize: 20,
                                                  fontFamily: 'Avenir',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                  letterSpacing: -0.16,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Container(
                                      width: 144,
                                      height: 40,
                                      decoration: ShapeDecoration(
                                          color: Color(0xFFF7F7F8),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1.50,
                                                  color: Color(0xFFEDEFF0)),
                                              borderRadius:
                                                  BorderRadius.circular(8))),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Icon(Icons.filter_alt_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                "Filter",
                                                style: TextStyle(
                                                  color: Color(0xFF646E77),
                                                  fontSize: 20,
                                                  fontFamily: 'Avenir',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                  letterSpacing: -0.16,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 290, top: 20),
                              child: Text(
                                'New (78)',
                                style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 20,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w900,
                                  height: 0,
                                  letterSpacing: -0.18,
                                ),
                              ),
                            ),



                            Positioned(
                              top: 650,
                              bottom: 10,
                              child: SizedBox(
                                width: 380,
                                height: 600,
                                child: GridView.count(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                  shrinkWrap: true,
                                  children: List.generate(
                                    newimage.length,
                                    (index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: NetworkImage('img.png'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: 160,
                                                height: 120,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(left: 10),
                                                  child: Stack(children: [
                                                    Image.asset(newimage[index]),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 120,
                                                              top: 10),
                                                      child: Icon(
                                                        Icons
                                                            .favorite_outline_outlined,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              Text(
                                                text
                                                [index],
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF646E77),
                                                  fontSize: 12,
                                                  fontFamily: 'Avenir',
                                                  fontWeight: FontWeight.w800,

                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  cash[index],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF252837),
                                                    fontSize: 14,
                                                    fontFamily: 'Avenir',
                                                    fontWeight: FontWeight.w900,
                                                    height: 0.11,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Image.asset("assets/more.png")),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            CarouselSlider.builder(
              itemCount: img.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                          width: 500,
                          height: 40,
                          color: Colors.black,
                          child: Image.asset(
                            img[itemIndex],
                            fit: BoxFit.cover,
                          )
                      ),
              options: CarouselOptions(
                height: 300,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Positioned(
              top: 265,
              child: Container(
                width: 393,
                height: 520,
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 410, left: 20),
                  child: Row(
                    children: [
                      Text(
                        'New Products',
                        style: TextStyle(
                          color: Color(0xFF252837),
                          fontSize: 18,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w900,
                          height: 0,
                          letterSpacing: -0.18,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Text(
                        'See All',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF646E77),
                          fontSize: 16,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 210,
                      height: 230,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 200,
                                height: 160,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                                child: Image.asset("assets/watch.png"),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 185, top: 5),
                                child: Icon(
                                  Icons.favorite_outline_outlined,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Space Gray Aluminum Case\n with Sport Band',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF646E77),
                                fontSize: 12,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w800,
                                height: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              '\$399.90',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF252837),
                                fontSize: 14,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w900,
                                height: 0.11,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                          width: 210,
                          height: 230,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 160,
                                    decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16))),
                                    child: Image.asset("assets/headphone.png"),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Container(
                                      width: 40,
                                      height: 20,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFC9803),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(90),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 1, right: 1, top: 9),
                                        child: Text(
                                          '%34',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                            height: 0.12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Harman Kardon Allure\nBluetooth Speaker',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF646E77),
                                    fontSize: 12,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w800,
                                    height: 1,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 60),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$893.50',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF252837),
                                        fontSize: 14,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w900,
                                        height: 0.11,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        '\$1299.90',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF646E77),
                                          fontSize: 14,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w400,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          height: 0.11,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600, left: 10, right: 10),
              child: Divider(
                height: 2,
                thickness: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 615, left: 20),
              child: Text(
                'Popular',
                style: TextStyle(
                  color: Color(0xFF252837),
                  fontSize: 18,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w900,
                  height: 0,
                  letterSpacing: -0.18,
                ),
              ),
            ),
            Positioned(
              top: 650,
              bottom: 10,
              child: SizedBox(
                width: 380,
                height: 250,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: List.generate(
                    image.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Page4(txt:txt[index], price: price[index], image: image[index] ,)));},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: NetworkImage('img.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 160,
                                  height: 120,
                                  child: Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Stack(children: [
                                      Image.asset(image[index]),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 130, top: 10),
                                        child: Icon(
                                          Icons.favorite_outline_outlined,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    txt[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF646E77),
                                      fontSize: 12,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w800,
                                      height: 1,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    price[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF252837),
                                      fontSize: 14,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w900,
                                      height: 0.11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      //AppBar
    );
  }
}
