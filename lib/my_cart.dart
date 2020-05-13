import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
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
          backgroundColor: Color(0xfff42b51),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.black87,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  cart(
                    img: 'images/img1.jpg',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Select Sized',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      size_card(
                        title: 'Small',
                        quantity: '-6,90',
                        icons: FontAwesomeIcons.user,
                        iconColor: Colors.grey,
                      ),
                      size_card(
                        icons: Icons.supervisor_account,
                        iconColor: Colors.white,
                        title: 'Medium',
                        quantity: '__',
                        colour: Color(0xfff42b51),
                      ),
                      size_card(
                        icons: FontAwesomeIcons.users,
                        iconColor: Colors.grey,
                        title: 'Large',
                        quantity: '+6,90',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ImagesForAll(),
                      ImagesForAll(),
                      ImagesForAll(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.blueAccent,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.green[400],
          height: 70.0,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30.0,
              color: Colors.white,
            ),
            Icon(
              Icons.chat_bubble,
              size: 30.0,
              color: Colors.white,
            ),
            Icon(
              Icons.check,
              size: 40.0,
              color: Colors.white,
            ),
            Icon(
              Icons.directions_bike,
              size: 30.0,
              color: Colors.white,
            ),
            Icon(
              Icons.location_on,
              size: 30.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class ImagesForAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 110.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 3.0,
            ),
            color: Colors.blue,
            image: DecorationImage(
              image: AssetImage(
                'images/img1.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            left: 70.0,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),),
        Positioned(
            top: 70.0,
            left: 10.0,
            child: Text(
              'Clasic Edge',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}

class cart extends StatelessWidget {
  cart({ this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              color: Color(0xfff42b51),
              height: 100.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              height: 305.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    child: Image(
                      width: 420.0,
                      image: AssetImage(img),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Text(
                        'ITALIANO PIZZA',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0, right: 20.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.minusCircle,
                          color: Color(0xfff42b51),
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(
                          FontAwesomeIcons.plusCircle,
                          color: Color(0xfff42b51),
                          size: 40.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class size_card extends StatelessWidget {
  size_card(
      {this.title, this.quantity, this.icons, this.colour, this.iconColor});
  final String title;
  final String quantity;
  final IconData icons;
  final Color colour;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 5.0, 10.0, 5.0),
          height: 100.0,
          width: 90,
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  icons,
                  color: iconColor,
                  size: 40.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  quantity,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
