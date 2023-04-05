import 'package:flutter/material.dart';
import 'orderpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 30),
            child: Text(
              '-  寿司屋  -',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 30),
            child: Image.asset('image/sushipages.png'),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text(
                'Craving sushi?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text(
                'We got you covered!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OrderPage()),
                  );
                },
                child: Row(children: [
                  const Icon(
                    Icons.arrow_right,
                    size: 40,
                    color: Color.fromRGBO(92, 133, 243, 1),
                  ),
                  Text(
                    'Start Ordering Now!',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.8),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
