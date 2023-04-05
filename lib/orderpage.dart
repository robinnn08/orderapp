import 'package:flutter/material.dart';
import 'sushilist.dart';
import 'sushi.dart';
import 'summaryPage.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SummaryPage()),
          );
        },
        child: const Icon(Icons.shopping_cart_checkout),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Text(
                'What would you like to order?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
            Expanded(
              child: Consumer<Sushi>(
                builder: (context, sushi, child) {
                  return GridView.builder(
                    itemCount: sushi.sushiMenu.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.85,
                    ),
                    itemBuilder: (context, index) {
                      return SushiList(
                        name: sushi.sushiMenu[index][0],
                        price: sushi.sushiMenu[index][1],
                        image: sushi.sushiMenu[index][2],
                        color: sushi.sushiMenu[index][3],
                        note: sushi.sushiMenu[index][4],
                        quantity: sushi.sushiMenu[index][5],
                        onPressed: () {
                          Provider.of<Sushi>(context, listen: false)
                              .addSummaryList(index);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SummaryPage()),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
