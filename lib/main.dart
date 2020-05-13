import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pizza/my_cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'Pizza',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ],
          backgroundColor: Colors.redAccent,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.black87,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Material(
                    color: Color(0xfff42b51),
                    child: TabBar(
                      controller: _tabController,
                      unselectedLabelColor: Colors.deepOrange,
                      isScrollable: true,
                      indicator: BoxDecoration(
                        color: Color(0xfff42b51),
                      ),
                      tabs: <Widget>[
                        Tab(
                          text: "Popular Pizza",
                        ),
                        Tab(
                          text: "Popular Pizza",
                        ),
                        Tab(
                          text: "Popular Pizza",
                        ),
                        Tab(
                          text: "Popular Pizza",
                        )
                      ],
                    ),
                  ),
                  pizza_card(
                    img: 'images/img1.jpg',

                  ),
                  pizza_card(
                    img: 'images/img2.jpg',
                  ),
                  pizza_card(

                    img: 'images/img3.png',
                  ),
                  pizza_card(
                    img: 'images/pizza3.png',
                  ),
                ],
              ),
            ),
          ),

        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.blueAccent,
          backgroundColor: Color(0x000000),
          buttonBackgroundColor: Colors.green[400],
          height: 70.0,
          items: <Widget>[

            Icon(Icons.home,size: 30.0, color: Colors.white,),
            Icon(Icons.chat_bubble,size: 30.0, color: Colors.white,),
            Icon(Icons.shopping_cart,size: 40.0, color: Colors.white,),
            Icon(Icons.directions_bike,size:30.0, color: Colors.white,),
            Icon(Icons.location_on,size: 30.0, color: Colors.white,),
          ],
        ),
      ),
    );

  }
}

class pizza_card extends StatelessWidget {
pizza_card({ this.img});

final String img;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MyCart(),),),
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
            height: 170.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(160, 10.0, 10.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 120.0,
                        child: Text(
                          'Pizza with ginger',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Icon(FontAwesomeIcons.heart, color: Colors.white,),
                    ],
                  ),
                  Text(
                    'yup there',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        child: Text(
                          '24,90',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 90.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: Color(0xfff42b51),
                            borderRadius:
                                BorderRadius.circular(30.0)),
                        alignment: Alignment.center,
                        child: Text(
                          'order now',
                          style: TextStyle(
                              fontSize: 12.0, color: Colors.white,
                          fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 10.0,
          top: 5.0,
          bottom: 12,
          child: ClipRRect(
            child: Image(
              width: 150.0,
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
