import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xEFFEEBEC),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(77),
        child: AppBar(
          backgroundColor: Colors.white, //Color(0xEFFEEBEC),
          elevation: 0,
          actions: <Widget>[
            Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 22),
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 1,
                    child: CircleAvatar(
                      minRadius: 20,
                      maxRadius: 30,
                      child: ClipOval(child: Image.asset('images/dp.jpg')),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Good Morning,',
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 0.5,
                      color: Color.fromARGB(255, 99, 97, 97),
                      // fontWeight: FontWeight.bold,
                      //fontStyle: FontStyle.italic
                    ),
                  ),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 85, top: 15),
                ),
                Container(
                  child: Text(
                    'Ritesh Pandey',
                    style: TextStyle(
                        letterSpacing: 0.1,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSerif',
                        fontSize: 18),
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 85, top: 30),
                ),
                Container(
                  //color: Colors.red,
                  width: MediaQuery.of(context).size.width * 1,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: Icon(
                      Icons.notifications_outlined,
                      color: Color.fromARGB(255, 178, 171, 171),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
